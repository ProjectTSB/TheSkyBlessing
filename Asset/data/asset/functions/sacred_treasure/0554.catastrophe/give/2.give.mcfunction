#> asset:sacred_treasure/0554.catastrophe/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0554.catastrophe/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 554
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:player_head"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"†","color":"white"},{"text":"カタストロフィ","color":"gray"},{"text":"†","color":"white"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"崩壊の騎士のための装備"}]','[{"text":"傷付く度に、快楽を求めた"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value head
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onDamageFromEntity"
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:sacred_treasure Condition set value '{"text":"繋がる総てを身に纏う"}'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value 600
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 5
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Urban', 'Wi-ki']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {Unbreakable:1b,SkullOwner:{Id:[I;994325293,-761705917,-1324473476,-101849626],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRiN2Q4OGExNjhmNDg4MzU0Mjc0MDlmZGViYzVjOGRjYjQwNmI2ZGIyOGU1YTc5OWE4M2MzYzljMGNmNjQ4In19fQ=="}]}},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1,1,554,6],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1,1,554,6],Slot:"head"}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give