#> asset_manager:island/dispel/summon_boss/task
#
#
#
# @within function asset_manager:island/dispel/summon_boss/tick

# スコア加算
    scoreboard players add @s DispelTime 1
# VFX
    execute if score @s DispelTime matches 1..95 run tp @s ~ ~ ~ ~1.5 ~
    execute if score @s DispelTime matches 1..95 run function asset_manager:island/dispel/summon_boss/vfx/circle
    execute if score @s DispelTime matches 96..100 run function asset_manager:island/dispel/summon_boss/vfx/summon_line
    execute if score @s DispelTime matches 100 run function asset_manager:island/dispel/summon_boss/vfx/summon
# 召喚
    execute if score @s DispelTime matches 100 run function asset_manager:island/dispel/summon_boss/summon
# 削除
    execute if score @s DispelTime matches 100 run kill @s
    execute if score @s DispelTime matches 100 run tag @e[type=armor_stand,tag=CursedTreasure,tag=CantDispel,distance=..2.5,limit=1] remove CantDispel