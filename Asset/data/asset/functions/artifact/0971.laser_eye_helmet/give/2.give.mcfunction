#> asset:artifact/0971.laser_eye_helmet/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0971.laser_eye_helmet/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 971
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:player_head"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"レーザーアイヘルメット","color":"green"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['{"text":"レーザーアイ形をしたヘルメット"}','{"text":"ビームを放出することができる"}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "head"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "keepSneak2s"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value [20,50]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Thunder]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 30
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 15
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    data modify storage asset:artifact LocalCooldown set value 5
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:artifact DisableCooldownMessage set value true
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Urban", "Nyaptov", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:artifact CustomNBT set value {SkullOwner:{Id:[I;946128277,759517147,-1752401778,423880275],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI3ODZhMGI3MWJiNGE3MDEwOGE3NDQzNWU1Y2VlNTg4ZmRmMzU5YjllYWVmYjc0YjY4Mzc3N2I1MTgwNjI5OCJ9fX0="}]}},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1,1,971,6],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1,1,971,6],Slot:"head"}]}

# 神器の入手用function
    function asset:artifact/common/give