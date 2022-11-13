#> asset:sacred_treasure/0471.stone_cutter_chainsaw/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0471.stone_cutter_chainsaw/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 471
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"イシキリチェンソー","color":"dark_red","bold":"true"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"前方の敵全体を切り刻む"},{"text":"石切台","strikethrough":"true","italic":"true"},{"text":"チェンソー"}]','""','[{"text":"魔力を注ぎ込みエンジンをふかせ","color":"dark_purple","italic":"true"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 1800
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value [11,16]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackRange set value 2
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 1
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Urban', 'Rumor']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;1,1,471,1],Slot:mainhand,Name:"generic.attack_damage"},{AttributeName:"generic.movement_speed",Amount:-0.02,Operation:0,UUID:[I;1,1,471,1],Slot:mainhand,Name:"generic.movement_speed"},{AttributeName:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;1,1,471,1],Slot:mainhand,Name:"generic.attack_speed"}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give