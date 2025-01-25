#> player_manager:grave/tick/check_with_user
#
#
#
# @within function player_manager:grave/tick/

execute if entity @s[gamemode=!spectator,tag=!Death,tag=!InRespawnEvent,distance=..4] run data modify storage player_manager:grave IsGraveNearOwner set value true
scoreboard players operation $UserGraveVersion Temporary = @s GraveVersion
