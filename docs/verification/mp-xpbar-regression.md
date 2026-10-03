# MP表示の差分判定の回帰検証

Minecraft 1.20.4 Vanillaで、[シナリオ](../../tests/scenarios/mp-xpbar-regression.json) を実行した。プレイヤーの初期化とMP/MPMax、比較用のXPずれはfixtureとして設定し、tickを凍結して本体の `check_xpbar` を実行する。private関数の呼出しは診断用であり、公開APIの利用例ではない。

`adjust_xpbar` の既存の終了処理が `$NowMP Temporary` を削除する性質を観測するため、check直前にsentinelを置く。整合時はsentinelが保持され、不整合時は消えることを、実際のXPレベル・XpPと併せて検査する。検証用に本体関数を差し替えてはいない。

| MP / MPMax | check直前の状態 | check後レベル | XpP × 1000000（整数） | 再調整 |
| --- | --- | --- | --- | --- |
| 0 / 1000 | 整合済み | 0 | 0 | なし |
| 500 / 1000 | 整合済み | 50 | 495049 | なし |
| 509 / 1000 | 整合済み | 50 | 495049 | なし |
| 9 / 1000 | 整合済み | 0 | 0 | なし |
| 1000 / 1000 | 整合済み | 100 | 990098 | なし |
| 509 / 1000 | レベルのみ123へ変更 | 50 | 495049 | あり |
| 509 / 1000 | ポイントのみ0へ変更 | 50 | 495049 | あり |

全8 stepが成功し、正常stop・全次元保存・参照コードの実行中不変を確認した。画面描画と負荷は評価していない。

DevSpaceの共通runnerで、参照本体をこの作業コピーに設定して実行する。

```sh
sh scripts/verify.sh /path/to/TheSkyBlessing/tests/scenarios/mp-xpbar-regression.json
```

2026-10-03の実行記録はDevSpaceローカルの `.runtime/verification-runs/run-hejzcrq9/result.json`。本体は `bf946701676580515e8f45885b6e754df376fcfa` に本修正を加えた状態、Assetは `bf4eba7ae02fa38cb41030cdd8460716d8072d5a`、AnimatedJavaはdistの `e48a116501b931a6688d5bd77e8f60c82de27ffa`。通常設定を編集せず、専用の `DEVSPACE_CONFIG` と共通runnerのOSロックを使って実行した。
