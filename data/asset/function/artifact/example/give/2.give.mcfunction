#> asset:artifact/example/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @within function asset:artifact/example/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

data modify storage asset:artifact ID set value 65535


data modify storage asset:artifact Item set value "iron_helmet"

data modify storage asset:artifact Name set value '{"text":"ヘルメット","color":"#f9fffe","font":"misaki/gothic"}'

data modify storage asset:artifact Lore set value ['{"text":"まもる"}']

# data modify storage asset:artifact ConsumeItem.Item set value
# data modify storage asset:artifact ConsumeItem.Count set value

# data modify storage asset:artifact RemainingCount set value

data modify storage asset:artifact Slot set value "head"

data modify storage asset:artifact Trigger set value "equipping"

data modify storage asset:artifact Condition set value '{"text":"いつでも"}'

data modify storage asset:artifact MPCost set value 0
# data modify storage asset:artifact MPRequire set value 10
# data modify storage asset:artifact MPHealWhenHit set value 5

# data modify storage asset:artifact LocalCooldown set value 80
# data modify storage asset:artifact TypeCooldown.Type set value "longRange"
# data modify storage asset:artifact TypeCooldown.Duration set value 40
# data modify storage asset:artifact SpecialCooldown set value 20

# data modify storage asset:artifact AttackInfo.Damage set value [1000,2000]
# data modify storage asset:artifact AttackInfo.AttackType set value ["Physical"]
# data modify storage asset:artifact AttackInfo.ElementType set value ["None"]
# data modify storage asset:artifact AttackInfo.BypassResist set value false
# data modify storage asset:artifact AttackInfo.IsRangeAttack set value "never"
# data modify storage asset:artifact AttackInfo.AttackRange set value "?"

data modify storage asset:artifact Equipment.Effects set value [{ID:65535,Visible:true,IsSetEffect:true}]
data modify storage asset:artifact Equipment.Modifiers set value [{Type:"max_health",Amount:4d,Operation:"add"}]

data modify storage asset:artifact CanUsedGod set value "ALL"

data modify storage asset:artifact CustomNBT set value {Unbreakable:1b,AttributeModifiers:[]}

function asset:artifact/common/give
