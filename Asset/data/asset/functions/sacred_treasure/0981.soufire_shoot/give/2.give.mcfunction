#> asset:sacred_treasure/0981.soufire_shoot/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0981.soufire_shoot/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 981
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"ソウルファイアバースト","color":"red"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"前方に爆発する火の玉を放つ。","color":"white"}]','[{"text":"火の玉はしばらくすると、5つの小さな火球に分裂する。","color":"white"}]','{"text":"\\"行けぇッ！\\"","color":"gray"}']
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value ["900-1200 / 300-400×5"]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [Fire]
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    #data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value []
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 80
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure LocalCooldown set value 40
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ["Urban","Nyaptov"]

# 神器の入手用function
    function asset:sacred_treasure/common/give