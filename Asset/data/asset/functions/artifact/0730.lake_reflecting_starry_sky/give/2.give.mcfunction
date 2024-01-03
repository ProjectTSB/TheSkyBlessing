#> asset:artifact/0730.lake_reflecting_starry_sky/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0730.lake_reflecting_starry_sky/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 730
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"湖鏡映天","color":"gold"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"使用時、","color":"#C4C4C4"},{"text":"星湖","color":"#3643FF"},{"text":"を設置する。","color":"#C4C4C4"}]','[{"text":"星湖","color":"#3643FF"},{"text":"は内部の敵に継続的にダメージを与え、","color":"#C4C4C4"}]','[{"text":"定期的に","color":"#C4C4C4"},{"text":"星波","color":"#3643FF"},{"text":"を発生させダメージを与える。","color":"#C4C4C4"}]','[{"text":"また、内部のプレイヤーに","color":"#C4C4C4"},{"text":"水攻撃+30%","color":"aqua"},{"text":"を付与する。","color":"#C4C4C4"}]','[{"text":"月無き湖畔の星空を取り込んだとされる鏡。","color":"blue"}]','[{"text":"星降る夜に響く波の音は夜の静寂を引き立てる。","color":"blue"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:artifact RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:artifact Condition set value '{"text":"夜である時","color":"white"}'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.Damage set value [350,600]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackType set value [Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.ElementType set value [Water]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:artifact AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.IsRangeAttack set value "every"
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:artifact AttackInfo.AttackRange set value 15
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 200
# MP必要量 (int) (オプション)
    # data modify storage asset:artifact MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    data modify storage asset:artifact SpecialCooldown set value 3000
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableCooldownMessage set value
# MP不足による使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:artifact DisableMPMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value ["Flora", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give