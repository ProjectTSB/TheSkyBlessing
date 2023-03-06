#> asset:artifact/0979.water_charm/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0979.water_charm/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 979
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '[{"text":"水","color":"aqua"},{"text":"のチャーム","color":"white"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"水属性","color":"aqua"},{"text":"の攻撃力が5%上昇する。","color":"white"}]']
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "hotbar"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "equipping"
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 0
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value "ALL"

# 神器の入手用function
    function asset:artifact/common/give