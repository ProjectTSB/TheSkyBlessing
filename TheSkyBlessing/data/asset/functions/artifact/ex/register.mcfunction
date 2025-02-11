#> asset:artifact/ex/register
#
# 神器の作成部 ここでID等を定義する
#
# @within function asset:artifact/alias/65500/register

data modify storage asset:artifact ID set value 65500
data modify storage asset:artifact Item set value "minecraft:stick"
data modify storage asset:artifact Name set value '{"text":"","extra":[{"text":"イーカロス","color":"dark_red"}]}'
data modify storage asset:artifact Lore set value ['{"text":"ある地に潜む研究者の末裔が作り出した、"}','{"text":"対天使兵器の最高傑作。"}','{"text":"攻撃した敵の傷口をさらに開き、致命傷に至らせる。"}','{"text":"「いかなる犠牲によっても、","color":"gray","italic":true}','{"text":"かの翼人らを討ち滅ぼさなければならぬのだ。」","color":"gray","italic":true}']
# data modify storage asset:artifact RemainingCount set value
# data modify storage asset:artifact RemainingCountMax set value
data modify storage asset:artifact Slot set value "hotbar"
data modify storage asset:artifact Trigger set value "attack"
data modify storage asset:artifact SubTriggers set value ["equip"]
# data modify storage asset:artifact Condition set value
data modify storage asset:artifact AttackInfo set value {Damage:["???"],AttackType:[Physical],ElementType:[None],BypassResist:true,IsRangeAttack:never}
# data modify storage asset:artifact ConsumeItem set value {Item:'{"text":""}',Count:0}
data modify storage asset:artifact MPCost set value 100
# data modify storage asset:artifact MPRequire set value
data modify storage asset:artifact LocalCooldown set value 0
# data modify storage asset:artifact TypeCooldown set value {Type:"shortRange",Duration:1}
# data modify storage asset:artifact SpecialCooldown set value
data modify storage asset:artifact DisableCooldownMessage set value true
data modify storage asset:artifact DisableMPMessage set value true
data modify storage asset:artifact DisableBreakSound set value true
# data modify storage asset:artifact EquipID set value
data modify storage asset:artifact Modifiers set value []
data modify storage asset:artifact Modifiers append value {Type:"attack/base",Amount:0.05d,Operation:"multiply_base",MaxStack:9}
data modify storage asset:artifact Modifiers append value {Type:"defense/base",Amount:0.05d,Operation:"multiply_base",MaxStack:9}
data modify storage asset:artifact Modifiers append value {Type:"max_health",Amount:0.025d,Operation:"multiply_base",MaxStack:9}
data modify storage asset:artifact Modifiers append value {Type:"max_mp",Amount:0.025d,Operation:"multiply_base",MaxStack:9}
data modify storage asset:artifact CanUsedGod set value "ALL"
# data modify storage asset:artifact CustomNBT set value {}
