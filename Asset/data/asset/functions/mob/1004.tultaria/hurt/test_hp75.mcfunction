#> asset:mob/1004.tultaria/hurt/test_hp75
#
# デバッグ用、HPを75%まで下げた扱いにする
#
# @within function asset:mob/1004.tultaria/tick/**

execute as @e[type=wither_skeleton,scores={MobID=1004}] at @s run function asset:mob/1004.tultaria/hurt/health_under_75