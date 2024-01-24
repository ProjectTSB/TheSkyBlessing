#> asset:artifact/example/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

data modify storage asset:artifact ID set value 2147483647
data modify storage asset:artifact Item set value "minecraft:raw_gold"
data modify storage asset:artifact Name set value '{"text":"雷のブローチ","color":"yellow"}'
data modify storage asset:artifact Lore set value ['{"text":"攻撃を与えたとき、対象に"}','{"text":"現在体力に依存した割合攻撃を追加与える"}','{"text":""}']
# data modify storage asset:artifact CostText set value '{"text":""}'
data modify storage asset:artifact RemainingCount set value 50
data modify storage asset:artifact Slot set value "hotbar"
data modify storage asset:artifact Trigger set value "onAttack"
# data modify storage asset:artifact Condition set value '{"text":""}'
# data modify storage asset:artifact AttackInfo set value {Damage:[0,0],AttackType:[Physical,Magic],ElementType:[Fire,Water,Thunder,None],BypassResist:1b,IsrangeAttack:never}
data modify storage asset:artifact MPCost set value 20
# data modify storage asset:artifact MPRequire set value 100
data modify storage asset:artifact LocalCooldown set value 40
# data modify storage asset:artifact SpecialCooldown set value 5
data modify storage asset:artifact CanUsedGod set value ["Flora","Nyaptov","Wi-ki"]
# data modify storage asset:artifact CustomNBT set value {Unbreakable:1b}

function asset:artifact/common/give