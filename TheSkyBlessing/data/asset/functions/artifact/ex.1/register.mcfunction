#> asset:artifact/ex.1/register
#
# 神器の生成処理
#
# @within function asset:artifact/alias/65501/register

data modify storage asset:artifact ID set value 65501


data modify storage asset:artifact Item set value "minecraft:bow"

data modify storage asset:artifact Name set value '{"text":"ユミ","color":"#734E30"}'

data modify storage asset:artifact Lore set value ['{"text":"うつ"}']

data modify storage asset:artifact ConsumeItem.Item set value '{"translate":"item.minecraft.arrow"}'
data modify storage asset:artifact ConsumeItem.Count set value 1

data modify storage asset:artifact RemainingCount set value 1024

data modify storage asset:artifact Slot set value "mainhand"

data modify storage asset:artifact Trigger set value "shot"

data modify storage asset:artifact Condition set value '{"text":"いつでも"}'

# data modify storage asset:artifact AttackInfo.Damage set value [1000,2000]
# data modify storage asset:artifact AttackInfo.AttackType set value ["Physical"]
# data modify storage asset:artifact AttackInfo.ElementType set value ["None"]
# data modify storage asset:artifact AttackInfo.BypassResist set value false
# data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# data modify storage asset:artifact AttackInfo.AttackRange set value "?"

data modify storage asset:artifact MPCost set value 5
# data modify storage asset:artifact MPRequire set value 10

# data modify storage asset:artifact MPHealWhenHit set value 5

data modify storage asset:artifact LocalCooldown set value 80

data modify storage asset:artifact TypeCooldown.Type set value "longRange"
data modify storage asset:artifact TypeCooldown.Duration set value 40

data modify storage asset:artifact SpecialCooldown set value 20

data modify storage asset:artifact CanUsedGod set value "ALL"

data modify storage asset:artifact CustomNBT set value {AttributeModifiers:[]}
