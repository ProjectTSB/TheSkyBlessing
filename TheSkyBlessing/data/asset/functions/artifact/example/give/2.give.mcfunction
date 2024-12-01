#> asset:artifact/example/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

data modify storage asset:artifact ID set value 2147483647


data modify storage asset:artifact Item set value "minecraft:iron_sword"

data modify storage asset:artifact Name set value '{"text":"ツルギ","color":"gray"}'

data modify storage asset:artifact Lore set value ['{"text":"きる"}']

data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.iron_ingot"}'
data modify storage asset:artifact ConsumeItem.Count set value 1
data modify storage asset:artifact ConsumeItem.Extra set value '{"text":"10%"}'

data modify storage asset:artifact RemainingCount set value 1024

data modify storage asset:artifact Slot set value "mainhand"

data modify storage asset:artifact Trigger set value "onAttackByMelee"

data modify storage asset:artifact Condition set value '{"text":"ねこ"}'

data modify storage asset:artifact AttackInfo.Damage set value [1000,2000]
data modify storage asset:artifact AttackInfo.AttackType set value ["Physical"]
data modify storage asset:artifact AttackInfo.ElementType set value ["None"]
data modify storage asset:artifact AttackInfo.BypassResist set value false
data modify storage asset:artifact AttackInfo.IsRangeAttack set value "probability"
data modify storage asset:artifact AttackInfo.AttackRange set value "1.5"

# data modify storage asset:artifact MPCost set value 5
# data modify storage asset:artifact MPRequire set value 10

data modify storage asset:artifact MPHealWhenHit set value 5

data modify storage asset:artifact LocalCooldown set value 80

data modify storage asset:artifact TypeCooldown.Type set value "shortRange"
data modify storage asset:artifact TypeCooldown.Duration set value 40

data modify storage asset:artifact SpecialCooldown set value 20

data modify storage asset:artifact CanUsedGod set value ["Flora","Urban","Nyaptov","Wi-ki","Rumor"]

data modify storage asset:artifact CustomNBT set value {Unbreakable:1b,AttributeModifiers:[]}

function asset:artifact/common/give
