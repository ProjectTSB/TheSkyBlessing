#> player_manager:bonus/update_defense_bonus/update_single
#
#
#
# @within function player_manager:bonus/update_defense_bonus/

data modify storage api: Argument.UUID set value [I;2,2,1,1]
function api:player_modifier/defense/base/remove

data modify storage api: Argument set value {Amount:-1,UUID:[I;2,2,1,1],Operation:"multiply"}
execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $DefenseBonus Global
function api:player_modifier/defense/base/add