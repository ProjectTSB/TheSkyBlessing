#> asset_manager:island/dispel/summon_boss/summon
#
#
#
# @within function asset_manager:island/dispel/summon_boss/task

# ボスを召喚する
    execute store result storage api: Argument.ID int 1 run scoreboard players get @s TargetBossID
    function api:mob/summon
