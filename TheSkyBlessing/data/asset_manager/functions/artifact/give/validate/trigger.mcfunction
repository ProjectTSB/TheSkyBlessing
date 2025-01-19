#> asset_manager:artifact/give/validate/trigger
#
#
#
# @within function asset_manager:artifact/give/

execute if data storage asset:artifact {Trigger:"equip"} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"equipは主トリガーとしては利用できません"}]
# execute unless data storage asset:artifact Condition run
# execute unless data storage asset:artifact AttackInfo run
# execute unless data storage asset:artifact ConsumeItem run
execute unless data storage asset:artifact MPCost unless data storage asset:artifact MPHealWhenHit run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"},{"text":" or","color":"white"},{"text":" MPHealWhenHit","color":"red"}]
# execute unless data storage asset:artifact MPRequire run
# execute unless data storage asset:artifact LocalCooldown run
# execute unless data storage asset:artifact TypeCooldown run
# execute unless data storage asset:artifact SpecialCooldown run
# execute unless data storage asset:artifact DisableCooldownMessage run
# execute unless data storage asset:artifact DisableMPMessage run
# execute unless data storage asset:artifact IgnoreItemUpdate run
