# 設定メニューのプレイ時間ボタンの回帰検証

Minecraft 1.20.4 Vanillaで [シナリオ](../../tests/scenarios/settings-play-time-buttons.json) を実行した。明示的なfirst_joinと設定値の初期化をfixtureにし、実際のメニュー作成・無効化・trigger dispatcher・設定変更handlerを通す。チャットクリックの入力に相当するTriggerスコアを、登録されたKeyのIDから与える。private関数の直接呼出しは診断用であり、公開APIの利用例ではない。

| 無効化入口 | ボタン | 無効化後の入力 | 再表示後の入力 |
| --- | --- | --- | --- |
| disable_settings_menu | 有効化 | falseを維持 | trueへ変更 |
| disable_settings_menu | 無効化 | trueを維持 | falseへ変更 |
| disable_all_buttons | 有効化 | falseを維持 | trueへ変更 |
| disable_all_buttons | 無効化 | trueを維持 | falseへ変更 |

全9 stepが成功し、正常stop・全次元保存・参照コードの実行中不変を確認した。登録と無効化のKey集合も静的に一致する。tickを凍結して予約による再表示を抑えており、再表示は直接呼び出す。画面上のクリック操作と予約時刻による再表示は検証範囲外。

DevSpaceの参照本体をこの作業コピーに設定して再実行する。

```sh
sh scripts/verify.sh /path/to/TheSkyBlessing/tests/scenarios/settings-play-time-buttons.json
```

2026-10-03の実行記録はDevSpaceローカルの `.runtime/verification-runs/run-p0sa9ux8/result.json`。本体は `bf946701676580515e8f45885b6e754df376fcfa` に本修正を加えた状態、Assetは `bf4eba7ae02fa38cb41030cdd8460716d8072d5a`、AnimatedJavaはdistの `e48a116501b931a6688d5bd77e8f60c82de27ffa`。通常設定を編集せず、専用の `DEVSPACE_CONFIG` と共通runnerのOSロックを使用した。先行する検証の終了前に試みた起動はロックで拒否され、サーバーを起動せずに終了した。
