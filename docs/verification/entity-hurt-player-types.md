# 被弾advancementの攻撃種別の回帰検証

Minecraft 1.20.4 Vanillaで [シナリオ](../../tests/scenarios/entity-hurt-player-types.json) を実行した。明示的に初期化したプレイヤーへ `/damage` で実際のadvancementイベントを発火させ、各回の直前にcriteriaを全revokeして `InBattleTick` を0にする。攻撃元は16 bitすべてのFindFlagを持つmarkerであり、生きたMobの探索・ダメージ計算には入らない。

| 入力 | rewardによるInBattleTick | 対象criterion |
| --- | --- | --- |
| magicを被弾 | 160 | reward後にtype-otherをrevoke |
| mob_attackを被弾 | 160 | reward後にtype-meleeをrevoke |
| arrowを被弾 | 160 | reward後にtype-projectileをrevoke |
| explosionを被弾 | 160 | reward後にtype-explosionをrevoke |
| プレイヤーがcowへmagicで攻撃 | 0を維持 | 被弾側type-otherは未達成 |

全11 stepが成功し、正常stop・全次元保存・参照コードの実行中不変を確認した。各damageコマンドは1.0ダメージの適用成功を返した。攻撃側の対照試験ではAttackedByApiを一時付与し、別の通常攻撃処理への流入を除外する。自然なMob攻撃、Mobのダメージ計算、画面演出の検証ではない。

DevSpaceの参照本体をこの作業コピーに設定して再実行する。

```sh
sh scripts/verify.sh /path/to/TheSkyBlessing/tests/scenarios/entity-hurt-player-types.json
```

2026-10-03の実行では、本体 `bf946701676580515e8f45885b6e754df376fcfa` に本修正を加えた状態、Asset `bf4eba7ae02fa38cb41030cdd8460716d8072d5a`、AnimatedJavaのdist `e48a116501b931a6688d5bd77e8f60c82de27ffa` を参照した。通常設定を編集せず、専用の `DEVSPACE_CONFIG` と共通runnerのOSロックを使用した。

実行記録はDevSpaceローカルの以下の2件に保存した。再試行は `retryOf` で関連付けている。

- `run-lnolpb4r`: ログイン後20 tickで最初のdamageが `Target is invulnerable to the given damage type` として拒否され、OTHERの期待値不一致。正常stopと全次元保存、参照コード不変を確認した。
- `run-_elspvqn`: 最初の被弾までを100 tickへ変更し、無敵能力値と体力の観測を追加して成功。各被弾前の `abilities.invulnerable` は0bで、体力は正値だった。後続被弾の間隔は20 tickのまま。

結果は `.runtime/verification-runs/<run>/result.json` にある。初回失敗を修正コードの不具合や特定の無敵機構に断定せず、観測された入力拒否と再試行条件を記録する。
