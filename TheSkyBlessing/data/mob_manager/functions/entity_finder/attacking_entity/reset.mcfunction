#> mob_manager:entity_finder/attacking_entity/reset
#
# スコア等のリセット
#
# @within function core:tick/

scoreboard players reset @a[scores={AttackingEntity=-2147483648..}] AttackingEntity
scoreboard players reset @e[type=#lib:living,type=!player,tag=AttackingEntity] AttackingEntity
tag @e[type=#lib:living,type=!player,tag=AttackingEntity] remove AttackingEntity