# Effect runtime verification (#1673 / #2265)

Run from the TheSkyBlessing checkout inside DevSpace:

```sh
python3 tests/effect-runtime/run.py
python3 tests/effect-runtime/run.py --scenario benchmark.json
python3 tests/effect-runtime/run.py --scenario benchmark.json --baseline
```

`run.py` creates a detached worktree under DevSpace's local `.worktrees/`, copies the current source changes into it, and installs `pack/` as a separate top-level fixture pack **only in that copy**. It invokes DevSpace's common `scripts/verify.sh` runner with a separate config. The normal world, config, branch, index and pack selection are not changed. `--baseline` uses the current HEAD implementation with the same fixtures. Copies and runner evidence are retained for inspection.

The fixture replaces the Effect dispatch tags. Do not install it in a normal world. It is outside the production `TheSkyBlessing/` datapack and is not registered in its load/tick tags.

Retries preserve previous evidence:

```sh
python3 tests/effect-runtime/run.py --retry-of /path/to/previous/result.json
```

## Functional coverage

“Owner” in the fixtures means the entity bearing the Effect (付与先), not the source that applied it. The implementation terminology and storage mapping are documented in [asset-runtime.md](../../docs/knowledge/asset-runtime.md#用語と保存場所).

`scenario.json` defines commands and explicit `checks`. Each check contains an `execute` condition without `run`; optional `probe` copies a path from `effect_test:` into `Probe` before evaluation. `scenarios.py` expands these into FAIL/PASS reporting and runner expectations. Expected values stay in the JSON; they are not inferred from the production code.

`benchmark.json` stores the owner/Effect counts, iterations and expected remaining durations. The same module expands the repeated profiling steps. `run.py` writes the expanded scenario to `tests/effect-runtime/expanded.json` **only in the disposable copy**, then passes it to the common runner. The runner archives that complete input alongside its results. Run these compact sources through `run.py`, rather than passing them directly to `verify.sh`.

The functional scenario prepares armor stands and calls the real give/get/remove APIs and Effect manager. A prepared cow checks the normal core tick selector; armor stands are intentionally outside `#lib:living`. A protocol player checks stored display messages. These are explicit fixtures, not tests of normal login, physical milk consumption, actual death/combat, or rendered client UI.

The assertions cover:

- Self removal from given, tick, re-given and inherited callbacks; repeated removal and attempts to overwrite a removal request.
- Removal of pending/already-processed Effects and a different owner; all Effects remain visible to get during callbacks, including forwarded get.
- ClearLv/ClearType/ClearCount, including zero count and the existing reverse selection order.
- New give, pending/self re-give, PreviousField, context refresh, and preservation of the next event.
- `remove → give` preserves removal; `give → remove` delivers the pending re-given before removing on the next Effect tick.
- Duration/stack expiry, natural expiry, give from end, milk/death flags, and legacy data without Revision.
- Cleanup of active context/owner tags and generation of the player's display data.

The existing remove API moves the selected element to the end of the saved array. The next tick uses that saved order; the fixture does not assume that removal preserves an element's former position.

## Performance coverage

`benchmark.json` uses inert callbacks and 1/5/10/20 Effects on 1/20 owners. Each case warms up for 1000 owner-ticks, then measures three batches of 1000 owner-ticks. The profiler is activated on an earlier tick and the batch is scheduled onto a subsequent tick. Completed iterations and remaining duration are asserted. Commands issued immediately after `debug start` can miss the profiling interval and are not a valid substitute for this procedure.

Reported times are profiled batch elapsed time, including common-runner polling, background core ticks and profiling overhead. They are **not gameplay MSPT** or a server capacity guarantee. The fixture raises maxCommandChainLength only in the disposable world to permit a long batch. It excludes real Effect bodies, rendering and combat. Compare repeated samples under the same conditions; the 20-owner case tests multiple storage owners, not a live production workload.

Verification attempts and measurements are recorded in [results.md](results.md). Full inputs, outputs, patches, hashes, failures and shutdown records remain in DevSpace's `.runtime/verification-runs/` under the listed run IDs.
