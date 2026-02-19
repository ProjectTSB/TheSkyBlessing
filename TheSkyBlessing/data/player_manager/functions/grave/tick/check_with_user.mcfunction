#> player_manager:grave/tick/check_with_user
#
#
#
# @within function player_manager:grave/tick/

tag @s add GraveOwner

scoreboard players operation $UserGraveVersion Temporary = @s GraveVersion
execute if entity @s[gamemode=!spectator,tag=!Death,distance=..32] run data modify storage player_manager:grave IsGraveNearOwner set value true
