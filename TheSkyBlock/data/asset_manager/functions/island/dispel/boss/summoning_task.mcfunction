#> asset_manager:island/dispel/boss/summoning_task
#
#
#
# @within function asset_manager:island/dispel/boss/summoning_task_repeater

# スコア加算
    scoreboard players add @s DispelTime 1
# VFX
    execute if score @s DispelTime matches 1..95 run tp @s ~ ~ ~ ~1.5 ~
    execute if score @s DispelTime matches 1..95 run function asset_manager:island/dispel/boss/vfx/circle
    execute if score @s DispelTime matches 96..100 run function asset_manager:island/dispel/boss/vfx/summon_line
    execute if score @s DispelTime matches 100 run function asset_manager:island/dispel/boss/vfx/summon
# 召喚
    execute if score @s DispelTime matches 100 run function asset_manager:island/dispel/boss/summon
# 削除
    execute if score @s DispelTime matches 100 run kill @s