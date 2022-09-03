#> asset:sacred_treasure/0279.c-4/trigger/4.place
#
#
#
# @within function
#       asset:sacred_treasure/0279.c-4/trigger/3.main
#       asset:sacred_treasure/0279.c-4/trigger/4.place

# 壁があるまで進む

# 着弾検知
    execute unless block ^ ^ ^0.1 #lib:no_collision run tag @s add 7R.Landing

# 着弾したらその壁が床か天井かを判定する。その後に召喚が入る
    execute if entity @s[tag=7R.Landing] run function asset:sacred_treasure/0279.c-4/trigger/wall_check

# 再起
    execute positioned ^ ^ ^0.1 if entity @s[tag=!7R.Landing,distance=..7] run function asset:sacred_treasure/0279.c-4/trigger/4.place