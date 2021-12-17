#> asset_manager:island/dispel/boss/watcher
#
#
#
# @within function
#   asset_manager:island/dispel/boss/summon
#   asset_manager:island/dispel/boss/watcher

execute as @e[type=armor_stand,tag=CursedTreasure,scores={TargetBossID=-2147483648..2147483647}] at @s run function asset_manager:island/dispel/boss/main_task

execute if entity @e[type=armor_stand,tag=CursedTreasure,scores={TargetBossID=-2147483648..2147483647},limit=1] run schedule function asset_manager:island/dispel/boss/watcher 1t