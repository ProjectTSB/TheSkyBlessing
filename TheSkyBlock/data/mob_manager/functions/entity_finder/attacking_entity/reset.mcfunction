#> mob_manager:entity_finder/attacking_entity/reset
#
#
#
# @within function core:tick


scoreboard players set $AttackingEntityIndex Global 0
scoreboard players reset @a[scores={AttackingEntity=-2147483648..}] AttackingEntity
scoreboard players reset @e[type=#lib:living,type=!player,tag=AttackingEntity] AttackingEntity
tag @e[type=#lib:living,type=!player,tag=AttackingEntity] remove AttackingEntity