#> asset:sacred_treasure/0559.solitariness/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0559.solitariness/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 559
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:chainmail_chestplate"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"۞","color":"dark_gray"},{"text":"ソリタリネス","color":"gray"},{"text":"۞","color":"dark_gray"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"孤独が唯一の友人だった。"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value chest
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value onAttackByMelee
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:sacred_treasure Condition set value '[{"text":"繋がる総てを身に纏い、蕭然の中に在る"}]'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value 10
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.BypassResist set value false
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 5
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure LocalCooldown set value 5
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Nyaptov', 'Wi-ki']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:64,Enchantments:[{id:unbreaking,lvl:3},{id:protection,lvl:5}],AttributeModifiers:[{UUID:[I;1,1,559,5],AttributeName:"generic.armor",Name:"armor",Slot:chest,Operation:0,Amount:8}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give