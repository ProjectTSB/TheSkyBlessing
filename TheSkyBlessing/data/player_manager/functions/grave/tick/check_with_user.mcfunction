#> player_manager:grave/tick/check_with_user
#
#
#
# @within function player_manager:grave/tick/

data modify storage player_manager:grave IsOwnerTouchGrave set value true
scoreboard players operation $UserGraveVersion Temporary = @s GraveVersion
