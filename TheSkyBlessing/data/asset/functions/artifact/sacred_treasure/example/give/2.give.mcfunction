#> asset:sacred_treasure/example/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

data modify storage asset:sacred_treasure ID set value 2147483647
data modify storage asset:sacred_treasure Item set value "minecraft:raw_gold"
data modify storage asset:sacred_treasure Name set value '{"text":"雷のブローチ","color":"yellow"}'
data modify storage asset:sacred_treasure Lore set value ['{"text":"攻撃を与えたとき、対象に"}','{"text":"現在体力に依存した割合攻撃を追加与える"}','{"text":""}']
# data modify storage asset:sacred_treasure CostText set value '{"text":""}'
data modify storage asset:sacred_treasure RemainingCount set value 50
data modify storage asset:sacred_treasure Slot set value "hotbar"
data modify storage asset:sacred_treasure Trigger set value "onAttack"
# data modify storage asset:sacred_treasure Condition set value '{"text":""}'
# data modify storage asset:sacred_treasure AttackInfo set value {Damage:[0,0],AttackType:[Physical,Magic],ElementType:[Fire,Water,Thunder,None],BypassResist:1b,IsrangeAttack:never}
data modify storage asset:sacred_treasure MPCost set value 20
# data modify storage asset:sacred_treasure MPRequire set value 100
data modify storage asset:sacred_treasure LocalCooldown set value 40
# data modify storage asset:sacred_treasure SpecialCooldown set value 5
data modify storage asset:sacred_treasure CanUsedGod set value ["Flora","Nyaptov","Wi-ki"]
# data modify storage asset:sacred_treasure CustomNBT set value {Unbreakable:1b}

function asset:sacred_treasure/common/give