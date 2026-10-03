const assert = require('node:assert/strict');
const { readFileSync } = require('node:fs');
const { resolve } = require('node:path');
const { test } = require('node:test');

const workflow = readFileSync(resolve(__dirname,
  '../workflows/auto-merge-docs-tests.yml'), 'utf8').replace(/\r\n/g, '\n');
const script = workflow.split('          script: |\n')[1]
  .split('\n').map(line => line.replace(/^ {12}/, '')).join('\n');
const run = new (Object.getPrototypeOf(async function () {}).constructor)(
  'github', 'context', 'core', 'exec', script);

const file = (filename, previous_filename) => ({ filename, previous_filename });
async function inspect(files, overrides = {}, changes = {}) {
  const pr = {
    number: 42, state: 'open', draft: false, changed_files: files.length,
    head: { sha: 'head' }, base: { ref: 'master', sha: 'base' },
    title: 'Update documentation', auto_merge: null, ...overrides,
  };
  let reads = 0;
  const calls = [];
  const github = {
    rest: { pulls: {
      get: async () => ({ data: reads++ ? { ...pr, ...changes } : pr }),
      listFiles: Symbol('listFiles'),
    } },
    paginate: async (method, params) => {
      assert.equal(method, github.rest.pulls.listFiles);
      assert.equal(params.per_page, 100);
      return files;
    },
  };
  await run(github, {
    repo: { owner: 'ProjectTSB', repo: 'Example' },
    payload: { pull_request: { number: 42 } },
  }, { info() {} }, {
    exec: async (command, args) => calls.push([command, ...args]),
  });
  return calls;
}

test('docs/tests only enables squash auto-merge for the inspected commit', async () => {
  const calls = await inspect([file('docs/nested/guide.md'), file('tests/case.json')]);
  assert.equal(calls.length, 1);
  assert.deepEqual(calls[0].slice(0, 10), [
    'gh', 'pr', 'merge', '42', '--repo', 'ProjectTSB/Example',
    '--auto', '--squash', '--match-head-commit', 'head',
  ]);
  assert.equal(calls[0][11], '✅ Update documentation (#42)');
});

test('docs-only merge subject starts with the documentation Gitmoji', async () => {
  const calls = await inspect([file('docs/guide.md')]);
  assert.equal(calls[0][11], '📝 Update documentation (#42)');
});

test('mixed changes, root documents, empty and partial listings are excluded', async () => {
  for (const files of [
    [], [file('README.md')], [file('docs-old/file')],
    [file('docs/guide.md'), file('pack/data/main.mcfunction')],
    [file('docs/guide.md'), file('.github/CODEOWNERS')],
    [file('docs/guide.md'), file('.github/workflows/check.yml')],
  ]) assert.deepEqual(await inspect(files), []);
  assert.deepEqual(await inspect([file('docs/guide.md')], { changed_files: 3001 }), []);
});

test('a code file moved into docs remains excluded', async () => {
  assert.deepEqual(await inspect([file('docs/main', 'pack/data/main')]), []);
  assert.deepEqual(await inspect([file('pack/data/main', 'docs/main')]), []);
  assert.equal((await inspect([file('docs/new', 'tests/old')])).length, 1);
});

test('all pages are considered, including disallowed files after the first 100', async () => {
  const files = Array.from({ length: 101 }, (_, i) => file(`docs/${i}.md`));
  assert.equal((await inspect(files)).length, 1);
  files.push(file('pack/data/main.mcfunction'));
  assert.deepEqual(await inspect(files), []);
});

test('draft, closed and other base branches are excluded', async () => {
  for (const overrides of [
    { draft: true }, { state: 'closed' }, { base: { ref: 'release', sha: 'base' } },
  ]) assert.deepEqual(await inspect([file('docs/guide.md')], overrides), []);
});

test('concurrent head/base/draft/file-count changes invalidate the decision', async () => {
  for (const changes of [
    { head: { sha: 'new' } }, { base: { ref: 'master', sha: 'new' } },
    { base: { ref: 'release', sha: 'base' } }, { draft: true },
    { changed_files: 2 }, { state: 'closed' },
  ]) assert.deepEqual(await inspect([file('docs/guide.md')], {}, changes), []);
});

test('ineligible changes disable bot auto-merge but preserve maintainer requests', async () => {
  const files = [file('pack/data/main.mcfunction')];
  assert.deepEqual(await inspect(files, {
    auto_merge: { enabled_by: { login: 'github-actions[bot]' } },
  }), [['gh', 'pr', 'merge', '42', '--repo', 'ProjectTSB/Example', '--disable-auto']]);
  assert.deepEqual(await inspect(files, {
    auto_merge: { enabled_by: { login: 'maintainer' } },
  }), []);
});

test('an existing auto-merge request is left intact', async () => {
  assert.deepEqual(await inspect([file('docs/guide.md')], {
    auto_merge: { enabled_by: { login: 'github-actions[bot]' } },
  }), []);
});

test('PR title is one literal process argument', async () => {
  const title = 'Literal `command` $(command) ${{ secrets.TOKEN }}';
  const calls = await inspect([file('docs/guide.md')], { title });
  assert.equal(calls[0][11], `📝 ${title} (#42)`);
});
