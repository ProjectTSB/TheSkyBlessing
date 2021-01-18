#> asset:sacred_treasure/example/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

data modify storage asset:sacred_treasure ID set value 2147483647
data modify storage asset:sacred_treasure Item set value "minecraft:potion"
data modify storage asset:sacred_treasure Name set value '{"text":"サンプル神器","color":"green"}'
data modify storage asset:sacred_treasure Lore set value ['{"text":"周囲にパーティクルを発生させる"}']
# data modify storage asset:sacred_treasure CostText set value '{"text":""}'
data modify storage asset:sacred_treasure RemainingCount set value 5
data modify storage asset:sacred_treasure Slot set value "auto"
data modify storage asset:sacred_treasure Trigger set value "onClick"
# data modify storage asset:sacred_treasure Condition set value '{"text":""}'
data modify storage asset:sacred_treasure MPCost set value 10
# data modify storage asset:sacred_treasure MPRequire set value 100
# data modify storage asset:sacred_treasure LocalCooldown set value 20
# data modify storage asset:sacred_treasure GlobalCooldown set value 5
data modify storage asset:sacred_treasure CanUsedGod set value ["Flora","Nyaptov","Wi-ki"]

function asset:sacred_treasure/lib/give