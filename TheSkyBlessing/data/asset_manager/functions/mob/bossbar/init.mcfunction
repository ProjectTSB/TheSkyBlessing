#> asset_manager:mob/bossbar/init
#
#
#
# @within function asset_manager:mob/summon/set_data

tag @e[type=#lib:living,tag=BossbarTarget] remove BossbarTarget
tag @s add BossbarTarget

bossbar set asset:bossbar name {"selector":"@s"}

execute store result bossbar asset:bossbar value store result bossbar asset:bossbar max run data get storage asset:mob Health 100
bossbar set asset:bossbar players @a