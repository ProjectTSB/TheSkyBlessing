# API・storage・scoreboard

API を使う前に、その API が行為、寄与の登録、個体生成、状態の取得のどれを提供するかを確認する。[本体の抽象構造](architecture.md) に、呼出フレーム、modifier の出典 ID、イベント配送、緩衝体力の防壁モデルをまとめた。

API関数は `TheSkyBlessing/data/api/functions/` にあり、呼出側のエンティティを暗黙に利用する関数が多い。呼出前に `as`/`at`、対象タグ、実行者を確認する。関数名のコメント（`#>`、`# @public`、`# @within`）が契約の入口で、`_index.d.mcfunction` は宣言と可視性の台帳である。

引数・結果は一時storageを介するパターンが中心で、まず対象APIと同じディレクトリの `get/set/add/remove` を読む。例としてDamageAPIのPR #2268では `Argument.ReduceEnchantment` と `Enchantments` のstorage namespace不一致が修正され、`api:ReduceEnchantmentID` の削除も追加された。storageのnamespace、パス、型、後片付けを一組で確認する。

グローバル状態には `storage global` と scoreboard が使われ、`core:load_once` が初期化の入口となる。個体ごとの永続状態には OhMyDat の `MobField`／`ObjectField`／`Effects` 等もあり、生成・付与時に作られるため、永続状態の保存先と初期化時点を一律に扱わない。[個体状態の保存](asset-runtime.md) を参照する。グローバルscore holderには `$PlayerCount`、`$Difficulty` 等があり、一般用途の一時計算用objectiveも存在する。新しいscore holder/objectiveは `_index.d.mcfunction` の宣言と初期化箇所を揃える。

API仕様として確定していないレビューコメント（特に一時値の取り回し）は、そのPRの結論と現行コードを優先し、推測で外部利用契約にしない。

Wiki の [API](https://github.com/ProjectTSB/TheSkyBlessing/wiki/api) は利用目的を探す索引として有用で、引数は原則自動 remove、damage/heal/effect 等は例外として呼出側 reset と説明する。現行実装では成功と validation failure でも cleanup が異なるため、一般則だけで判断しない。Wiki の Absorption 取得例は引数なしで `Return.Amount` 等を読む形だが、現行 `get` は `Argument.UUID` を必須とし、core が `Return.Absorption` を作る。IMP Doc、公開 wrapper、core、現行呼出側を一組で確認する。

## 実装手順

1. `_index.d.mcfunction` と対象APIの `#>`/`# @public` を読み、呼出可能範囲と実行者を確認する。
2. `Argument` の入力パスと型を既存の同系統 `set/get/add/remove` と照合する。
3. 呼出後に読む結果storage/scoreを先に特定し、Return相当の値を消さない。
4. `Temporary` とarray sessionの後始末を成功・失敗分岐の双方で確認する。

典型的な失敗はnamespace取り違え（#2268）、引数残留（#2277）。補正の丸め順はopen/unmerged #2278の未確定調査例であり規約にしない。成功・未指定・対象なしを確認する。

## 現行例

吸収体力取得は [absorption/get.mcfunction](../../TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) の契約が明確である。対象プレイヤーを実行者にし、防壁・効果の出典を識別する `storage api:` の `Argument.UUID`（int配列4要素）を準備して呼ぶ。この UUID は対象プレイヤーの指定ではない。結果は `Return.Absorption` で、該当UUIDがなければcoreが先に削除したままなので、呼出側は結果の存在も確認する。公開関数は成功時に入力UUIDを削除するが、validationの `return fail` では削除行へ到達しない。

```mcfunction
data modify storage api: Argument.UUID set value [I;1,2,3,4]
function api:entity/player/absorption/get
execute if data storage api: Return.Absorption run data get storage api: Return.Absorption
```

この3行は対象プレイヤーを実行者にした関数内で使う。外から呼ぶ場合は、同じ `execute as <selector> at @s run function ...` 境界の内側に引数設定から結果処理までを置く。

吸収体力追加は [absorption/add.mcfunction](../../TheSkyBlessing/data/api/functions/entity/player/absorption/add.mcfunction) の通り、`Argument.Amount`と`Argument.UUID`が必須で、`Priority`の既定値は0。成功経路は `Amount`、`UUID`、`Priority`、`WipedCallback` を削除する。必須値不足の失敗経路は早期returnするので、呼出側で残値を次の呼出しへ持ち越さない。

heal補正の [heal/modifier.mcfunction](../../TheSkyBlessing/data/api/functions/heal/modifier.mcfunction) は `as entity` で `Argument.Heal` をその場で更新するAPIである。これは独立したReturnを返す例ではない。呼出側が補正前の値も必要なら、呼出前に別pathへ複製する。このように「入力を消す」「入力を書き換える」「Returnを作る」はAPIごとに異なるため、共通の後始末規則へまとめない。
