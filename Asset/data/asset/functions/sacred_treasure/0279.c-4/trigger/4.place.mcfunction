#> asset:sacred_treasure/0279.c-4/trigger/4.place
#
#
#
# @within function
#       asset:sacred_treasure/0279.c-4/trigger/3.main
#       asset:sacred_treasure/0279.c-4/trigger/4.place

# 壁があるまで進む

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add 7R.Landing

# 着弾
    execute if entity @s[tag=7R.Landing] align xyz positioned ~0.5 ~0 ~0.5 run function asset:sacred_treasure/0279.c-4/trigger/c4_summon

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!7R.Landing,distance=..5] run function asset:sacred_treasure/0279.c-4/trigger/4.place