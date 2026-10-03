const assert = require('node:assert/strict');
const { spawnSync } = require('node:child_process');
const { mkdtempSync, mkdirSync, readFileSync, rmSync, writeFileSync } = require('node:fs');
const { tmpdir } = require('node:os');
const { join, resolve } = require('node:path');
const { test } = require('node:test');

const script = resolve(__dirname, '../workflows/make-declares-mcf.mts');

function workspace(t) {
  const cwd = mkdtempSync(join(tmpdir(), 'tsb-declares-'));
  t.after(() => rmSync(cwd, { recursive: true, force: true }));
  mkdirSync(join(cwd, '.cache'));
  const output = join(cwd, 'nested/declares.d.mcfunction');
  return {
    output,
    cache(value) {
      writeFileSync(join(cwd, '.cache/dls.json'), JSON.stringify({ cache: value }));
    },
    run() {
      return spawnSync(process.execPath, [script], {
        cwd, encoding: 'utf8',
        env: {
          CHECKOUT_PATH: '/checkout/', REPOSITORY: 'ProjectTSB/TheSkyBlessing',
          BRANCH: 'master', INDENT: '4', DEFAULT_VISIBILITY: 'public',
          VISIBILITY_FILTER: 'function@asset:effect/example/tick/\n',
          OUTPUT_PATH: output, OUTPUT_RESOURCE_PATH: 'minecraft:declares.d',
        },
      });
    },
  };
}

test('native Node generates filtered declarations, aliases and source links', t => {
  const fixture = workspace(t);
  fixture.cache({
    function: {
      'api:public': { def: [{
        uri: 'file:///checkout/TheSkyBlessing/data/api/functions/public.mcfunction',
        startLine: 0, endLine: 2,
      }] },
      'api:internal': { def: [{ visibility: [{ type: 'function', pattern: 'core:**' }] }] },
      'api:effect': { dcl: [{ visibility: [{ type: 'function', pattern: 'asset:effect/**' }] }] },
    },
    'alias/entity': { Player: { dcl: [{}], foo: '@s[type=player]' } },
  });
  const result = fixture.run();
  assert.equal(result.status, 0, result.stderr);
  assert.equal(readFileSync(fixture.output, 'utf8'), [
    '#> minecraft:declares.d', '# @private', '',
    '#> declare', '# @within **',
    '    #alias entity Player @s[type=player]',
    '    #declare function api:public         from https://github.com/ProjectTSB/TheSkyBlessing/blob/master/TheSkyBlessing/data/api/functions/public.mcfunction#L1-L3',
    '', '#> declare', '# @within function asset:effect/**',
    '#declare function api:effect', '',
  ].join('\n'));
});

test('an empty cache produces a valid empty declaration file', t => {
  const fixture = workspace(t);
  fixture.cache({});
  const result = fixture.run();
  assert.equal(result.status, 0, result.stderr);
  assert.equal(readFileSync(fixture.output, 'utf8'), '#> minecraft:declares.d\n# @private\n\n\n');
});

test('a missing linter cache fails the process', t => {
  const fixture = workspace(t);
  const result = fixture.run();
  assert.notEqual(result.status, 0);
  assert.match(result.stderr, /ENOENT.*\.cache\/dls\.json/);
});
