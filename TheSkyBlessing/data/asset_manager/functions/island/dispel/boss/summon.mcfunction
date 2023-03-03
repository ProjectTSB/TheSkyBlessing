#> asset_manager:island/dispel/boss/summon
#
#
#
# @within function asset_manager:island/dispel/boss/summoning_task

# ボスを召喚する
    execute store result storage api: Argument.ID int 1 run scoreboard players get @s TargetBossID
    function api:mob/summon
# UUID保存
    scoreboard players operation @e[type=armor_stand,tag=CursedArtifact,distance=..2.5,limit=1] TargetBossID = $FlagIndex Global