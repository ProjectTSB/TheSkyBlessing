#> player_motion:internal/summon/loop
# @within function
#   player_motion:internal/summon/crystal
#   player_motion:internal/summon/loop

scoreboard players remove $n_full_exp PlayerMotion.Internal.Math 1
execute summon end_crystal run damage @s 0
execute if score $n_full_exp PlayerMotion.Internal.Math matches 1.. run function player_motion:internal/summon/loop
