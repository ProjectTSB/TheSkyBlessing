"""Run the Effect fixture pack through DevSpace's common verification runner.

The fixture replaces Effect dispatch tags only in a detached, disposable copy.
Neither the normal pack selection nor the source checkout is modified.
"""
import argparse
import json
import os
from pathlib import Path
import runpy
import shutil
import subprocess
import tempfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--scenario', default='scenario.json')
    parser.add_argument('--retry-of', type=Path)
    parser.add_argument('--baseline', action='store_true', help='use HEAD runtime instead of working-tree code')
    args = parser.parse_args()
    source = Path(__file__).resolve().parents[2]
    devspace = source.parent
    runner = devspace / 'scripts/verification/run.py'
    if not runner.is_file():
        parser.error('Run from a TheSkyBlessing checkout directly inside DevSpace.')
    # 共通 runner と同じ設定から依存 repo / Java を引き継ぐ。
    settings = runpy.run_path(str(runner))['settings']
    repos, accepted, java = settings()
    # 元 checkout の branch / index を動かさず、検証専用の作業コピーを作る。
    copies = devspace / '.worktrees'
    copies.mkdir(exist_ok=True)
    stage = Path(tempfile.mkdtemp(prefix='effect-runtime-', dir=copies))
    subprocess.run(['git', '-C', str(source), 'worktree', 'add', '--detach', str(stage), 'HEAD'], check=True)
    # 通常は未コミット・未追跡ファイルもコピーする。baseline は HEAD のコードを保ち、
    # fixture とシナリオだけ現行版へ揃えて比較条件を合わせる。
    names = subprocess.check_output(['git', '-C', str(source), 'ls-files', '-z', '--cached', '--others', '--exclude-standard'])
    for raw in set(names.split(b'\0')) - {b''}:
        name = os.fsdecode(raw)
        if args.baseline and not name.startswith('tests/effect-runtime/'):
            continue
        src, dst = source / name, stage / name
        if src.is_file():
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)
        elif dst.is_file():
            dst.unlink()
    # fixture は dispatch tag を置換するため、このコピーにだけ独立 pack として置く。
    shutil.copytree(stage / 'tests/effect-runtime/pack', stage / 'EffectRuntimeFixture')
    # 通常の world / pack 設定に触れず、共通 runner の参照先をコピーへ向ける。
    config = stage / 'verification.local.conf'
    config.write_text('\n'.join([
        f'THE_SKY_BLESSING_PATH={stage}', f'ASSET_PATH={repos["Asset"]}',
        f'ANIMATED_JAVA_PATH={repos["Asset-AnimatedJava"]}',
        f'ACCEPT_EULA={accepted}', f'JAVA_BIN={java}',
    ]) + '\n')
    print(f'Effect fixture copy: {stage}', flush=True)
    # JSON の期待条件とベンチマークの条件一覧を共通 runner の形式へ展開し、入力として保存する。
    expand = runpy.run_path(str(stage / 'tests/effect-runtime/scenarios.py'))['expand']
    scenario = stage / 'tests/effect-runtime' / args.scenario
    expanded = stage / 'tests/effect-runtime/expanded.json'
    expanded.write_text(json.dumps(expand(json.loads(scenario.read_text())), indent=2) + '\n')
    command = ['sh', str(devspace / 'scripts/verify.sh'), str(expanded)]
    # 再試行は以前の失敗記録へ関連付ける。コピーと実行記録は削除せず保持する。
    if args.retry_of:
        command += ['--retry-of', str(args.retry_of.resolve())]
    result = subprocess.run(command, env=dict(os.environ, DEVSPACE_CONFIG=str(config)))
    print(f'Preserved fixture copy for reproducing this run: {stage}', flush=True)
    raise SystemExit(result.returncode)


if __name__ == '__main__':
    main()
