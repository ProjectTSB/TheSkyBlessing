#> asset:artifact/0272.infinity_food/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:artifact/0272.infinity_food/give/1.trigger
# @within function asset:artifact/0272.infinity_food/3.main

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:artifact ID set value 272
# 神器のベースアイテム
    data modify storage asset:artifact Item set value "minecraft:rotten_flesh"
# 神器の名前 (TextComponentString)
    data modify storage asset:artifact Name set value '{"text":"無限食糧","color":"yellow"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:artifact Lore set value ['[{"text":"無限に食べられる食料！食料不足はこれで解決！","color":"white"}]','[{"text":"（腐ってなかったらいいのになぁ）","color":"gray"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:artifact CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:artifact RemainingCount set value 1
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:artifact Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:artifact Trigger set value "itemUse"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:artifact Condition set value
# MP消費量 (int)
    data modify storage asset:artifact MPCost set value 20
# MP必要量 (int) (オプション)
    data modify storage asset:artifact MPRequire set value 0
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:artifact LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:artifact SpecialCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:artifact CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:artifact CustomNBT set value {}

# 神器の入手用function
    function asset:artifact/common/give