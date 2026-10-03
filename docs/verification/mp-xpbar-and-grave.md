# MP表示の再調整と墓回収の検証

2026-09-26、Minecraft 1.20.4 Vanilla。通常worldから独立した検証worldとprotocol clientで、現行の本体関数を実行した。機能実装は変更していない。

検証時の本体は `31d20b889b981662853a2e37401b1ff347b1067f` を基準とする未コミット変更込みの作業コピー。MP表示・墓回収・inventoryの対象処理は基準commitと同じで、文書化時の `6e2b1d0850a3f0adeb7e785e11260c0b15a963c2` とも一致する。以下は当時の実測であり、後続変更の動作を保証する記録ではない。

## 結果

### MP表示

MPMax=1000で、先に本体のcheck_xpbarを実行して表示を整え、キャッシュを無効化してから、同じ関数を `debug function` で再実行した。

| MP | 実行前後のXPレベル | トレース内のadjust_xpbar呼出回数 |
| --- | --- | --- |
| 500、1回目 | 50 → 50 | 1 |
| 500、再試行 | 50 → 50 | 1 |
| 0、対照 | 0 → 0 | 0 |

check_xpbarは生のMPとXPレベルを比較する一方、adjust_xpbarはMP/10をレベルへ設定する。この単位差により、MP500では表示が整っていても再調整される。MP0では省略されるため、「すべての状態で常に再調整する」という結論にはしない。グラフィカルなバー表示と負荷への影響は未測定。

### 墓回収

回収前にダイヤのヘルメット1個を頭、エメラルド1個をoffhand、金インゴット7個をslot27、土9個をhotbarへ置き、実Inventoryを確認した。プレイヤー側のGraveStoreItemsと仮のmarkerを用意し、実際の `player_manager:grave/tick/break` を実行した。即時の拾得を避けるため、markerをプレイヤーから10ブロック離した。

| 墓の保存内容 | 回収後の旧ヘルメット・旧offhand・旧slot27 | 回収後の保存品 |
| --- | --- | --- |
| hotbarの石のみ | 各所持数0。地面にはそれぞれ元の個数のstackが1つ | 石のみを所持 |
| 石＋頭の鉄ヘルメット＋offhandの盾＋slot27のダイヤ | 各所持数0。地面にはそれぞれ元の個数のstackが1つ | 指定した4枠へ復元 |

旧品の複製は起きなかった。墓回収に明示的なclearはないが、inventory/setが入力にない枠も消す。当初の「入力がなければ置換されない」という静的読解は誤りだった。

理由は、NBTのfiltered pathへの書込みによる要素生成にある。次の操作を単独でも実行し、結果が `[{Slot:0b}]` になることを確認した。

```mcfunction
data modify storage idiom_verify:probe Items set value []
data modify storage idiom_verify:probe Items[{Slot:103b}].Slot set value 0b
data get storage idiom_verify:probe Items
```

inventory/setのトレースでも、対応する入力へのappendが失敗した後、Slotの書込みが成功し、`Items[0]` の条件を通ってloot replaceが実行された。idを持たないslot要素は作業shulkerで空として扱われ、元の枠を消す。空の入力配列を「部分更新」と解釈しない。

自然な死亡・墓生成・接触判定は今回の検証範囲外。private関数の直接実行は診断用の境界であり、Assetの実装から呼ぶ利用例ではない。

## 再実行と証跡

DevSpaceから [シナリオ](../../tests/scenarios/mp-xpbar-and-grave-diagnostics.json) を実行する。

```sh
sh scripts/verify.sh TheSkyBlessing/tests/scenarios/mp-xpbar-and-grave-diagnostics.json
```

今回、起動直後のRCON応答が標準の15秒を超えたため、DevSpaceのローカルファイル `.runtime/idiom-runtime-verification/run-with-rcon-timeout.py` で共通runnerを読み込み、RCON commandのsocket timeoutだけ60秒へ変更して実行した。共有runnerや参照packは変更していない。以下はすべてDevSpace相対パスで、ローカルの実行記録はGit共有対象ではない。

- 最終結果: `.runtime/verification-runs/run-jf13511u/result.json`。18項目成功、正常stop、全次元保存、検証中の参照コード変更なし。
- MPトレース: 同runの `.runtime/debug/debug-trace-2026-09-26_18.17.00.txt`、`18.17.03.txt`、`18.17.05.txt`。この順にadjust_xpbarの `[F]` entryが1・1・0件。単にコマンド文字列が登場することと実際の関数呼出しを区別した。
- 墓トレース: 同ディレクトリの `debug-trace-2026-09-26_18.17.08.txt` と `18.17.11.txt`。この順に対象枠なし・あり。
- 判定結果の抽出: `.runtime/idiom-runtime-verification/assessment.json`。シナリオの成功に加えてトレース内の実呼出回数を照合した。

再試行はresult.jsonのretryOfで連結している。失敗を含む経過は次のとおり。

| run | 結果と理由 |
| --- | --- |
| 8lj0xp3x | RCONの初回応答が15秒を超え、シナリオ開始前にtimeout |
| _fidyrel | sayがRCON応答に返らず、準備確認のassertion失敗 |
| hzpq1q7d | scoreboard応答文の期待形式が違い、assertion失敗 |
| 4bvsfj3c | 複製仮説のassertion失敗。プレイヤーがdropを即時拾得する観測上の問題もあった |
| y0u2aq9h | 16項目成功。回収位置を離して所持品と地面を分離観測し、複製仮説を棄却 |
| 0q36wt8o | 単独NBT検査の応答文の期待形式が違い、assertion失敗。要素生成自体は成功 |
| jf13511u | 18項目成功。最終シナリオとトレース照合を完了 |

全試行で正常保存と検証中の参照コード不変を確認した。対象checkoutと未コミット差分のハッシュは各result.jsonに記録されている。
