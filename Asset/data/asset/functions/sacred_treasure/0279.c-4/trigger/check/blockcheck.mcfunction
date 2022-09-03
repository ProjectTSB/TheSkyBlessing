#> asset:sacred_treasure/0279.c-4/trigger/check/blockcheck
#
# 前方に壁があるかみる
#
# @within function
#       asset:sacred_treasure/0279.c-4/trigger/2.check_condition
#       asset:sacred_treasure/0279.c-4/trigger/check/blockcheck

# 着弾検知
    execute unless block ^ ^ ^0.25 #lib:no_collision run tag @s add 7R.Landing

# 着弾しても斜めな場合
    #execute if entity @s[tag=7R.Landing] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~1 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision if block ~ ~ ~1 #lib:no_collision if block ~ ~ ~-1 #lib:no_collision if block ~1 ~ ~ #lib:no_collision if block ~-1 ~ ~ #lib:no_collision run tag @s add FailRecovery

# 再起
    execute positioned ^ ^ ^0.25 if entity @s[tag=!7R.Landing,distance=..5] run function asset:sacred_treasure/0279.c-4/trigger/check/blockcheck