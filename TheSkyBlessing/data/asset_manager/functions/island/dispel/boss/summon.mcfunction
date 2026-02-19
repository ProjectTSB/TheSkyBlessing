#> asset_manager:island/dispel/boss/summon
#
#
#
# @within function asset_manager:island/dispel/boss/summoning_task

# UUIDを+1して先に保存する
    scoreboard players operation $FlagIndex Temporary = $FlagIndex Global
    scoreboard players add $FlagIndex Temporary 1
    scoreboard players operation @e[type=armor_stand,tag=CursedArtifact,distance=..2.5,limit=1] TargetBossID = $FlagIndex Temporary
# ボスを召喚する
    execute store result storage api: Argument.ID int 1 run scoreboard players get @s TargetBossID
    function api:mob/summon
# リセット
    scoreboard players reset $FlagIndex Temporary
