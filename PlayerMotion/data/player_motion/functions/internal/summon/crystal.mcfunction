#> player_motion:internal/summon/crystal
# @within function player_motion:internal/summon/main

$execute if score $n_full_exp PlayerMotion.Internal.Math matches 1.. anchored eyes positioned ^ ^ ^$(full_d) run function player_motion:internal/summon/loop
$execute anchored eyes positioned ^ ^ ^$(d) summon end_crystal run damage @s 0
