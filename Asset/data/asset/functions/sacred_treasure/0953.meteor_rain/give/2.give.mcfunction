#> asset:sacred_treasure/0953.meteor_rain/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0953.meteor_rain/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 953
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value carrot_on_a_stick
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"メテオレイン","color":"light_purple"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['{"text":"燃え盛る流星が天から降り注ぐ！","color":"white","italic":false}','{"text":"\\"破壊の星々に願いを\\"","color":"gray","italic":false}']
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value onClick
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value ["1000×30"]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [Fire]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value every
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackRange set value 32
# グローバルクールダウン (int) (オプション)
    #data modify storage asset:sacred_treasure SpecialCooldown set value 3600
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 200
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Urban','Wi-ki']

# 神器の入手用function
    function asset:sacred_treasure/common/give