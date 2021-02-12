#> mob_manager:entity_finder/attacking_entity/reset
#
#
#
# @within function core:tick


scoreboard players set $AttackedEntityIndex Global 0
scoreboard players reset @a[scores={AttackedEntity=-2147483648..}] AttackedEntity
scoreboard players reset @e[type=#lib:living,type=!player,tag=AttackedEntity] AttackedEntity
tag @e[type=#lib:living,type=!player,tag=AttackedEntity] remove AttackedEntity