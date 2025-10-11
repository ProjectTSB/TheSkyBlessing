#> player_motion:internal/summon/loop
scoreboard players remove $n_full_exp player_motion.internal.math 1
execute summon end_crystal run damage @s 0
execute if score $n_full_exp player_motion.internal.math matches 1.. run function player_motion:internal/summon/loop