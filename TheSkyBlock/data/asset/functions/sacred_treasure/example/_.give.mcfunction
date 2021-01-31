#> asset:sacred_treasure/example/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

data modify storage asset:sacred_treasure ID set value 2147483647
data modify storage asset:sacred_treasure Item set value "minecraft:golden_boots"
data modify storage asset:sacred_treasure Name set value '{"text":"ジェットパック","color":"green"}'
data modify storage asset:sacred_treasure Lore set value ['{"text":"スニークしている間上昇する"}']
# data modify storage asset:sacred_treasure CostText set value '{"text":""}'
data modify storage asset:sacred_treasure RemainingCount set value 1200
data modify storage asset:sacred_treasure Slot set value "feet"
data modify storage asset:sacred_treasure Trigger set value "keepSneak"
# data modify storage asset:sacred_treasure Condition set value '{"text":""}'
data modify storage asset:sacred_treasure MPCost set value 1
# data modify storage asset:sacred_treasure MPRequire set value 100
# data modify storage asset:sacred_treasure LocalCooldown set value 20
# data modify storage asset:sacred_treasure SpecialCooldown set value 5
data modify storage asset:sacred_treasure CanUsedGod set value ["Flora","Nyaptov","Wi-ki"]
data modify storage asset:sacred_treasure CustomNBT set value {Unbreakable:1b}

function asset:sacred_treasure/lib/give