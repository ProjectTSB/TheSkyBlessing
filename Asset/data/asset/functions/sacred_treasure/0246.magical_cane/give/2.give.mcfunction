#> asset:sacred_treasure/0246.magical_cane/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0246.magical_cane/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 246
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"マジカルステッキ","color":"green"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"MPを全て消費","color":"red"},{"text":"し、","color":"white"},{"text":"超強力","color":"gold"},{"text":"な攻撃をぶちかます。","color":"white"}]','[{"text":"天使に対してはダメージが","color":"white"},{"text":"半減","color":"red"},{"text":"する。","color":"white"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 5
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onAttackByMelee"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value "{消費MP×10}"
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 99999
# MP必要量 (int) (オプション)
    data modify storage asset:sacred_treasure MPRequire set value 0
# 神器のクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure LocalCooldown set value 1200
# グローバルクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure SpecialCooldown set value 600
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Nyaptov', 'Rumor']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1325912063,-1346287147,-1646160005,-2144481414],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;108815412,1284391254,-1801712452,1121514494]}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give