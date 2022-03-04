#> asset:sacred_treasure/0777.jade_armor/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0777.jade_armor/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 777
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:leather_leggings"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"翡翠の鎧","color":"#38b48b"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"美しい渓流で取れた翡翠で作られた鎧","color":"#38B48B"}]','[{"text":"装着者は水の加護を得る","color":"#38B48B"}]','[{"text":"水耐性+5% 水攻撃+5% ","color":"aqua"},{"text":"MP回復量+4% ","color":"green"}]','[{"text":"雷耐性-5%","color":"dark_red"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "legs"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "equipping"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical,Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:sacred_treasure DisableCooldownMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Nyaptov', 'Rumor']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:68,display:{color:3716235},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;1,1,777,4],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1,1,777,4],Slot:"legs"}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give