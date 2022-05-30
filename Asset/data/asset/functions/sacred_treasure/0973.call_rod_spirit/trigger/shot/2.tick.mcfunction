#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/2.tick
#
# ショット動かすやつ
#
# @within function
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/fairy/4.shoot
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/2.tick
#   asset:sacred_treasure/0973.call_rod_spirit/trigger/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Shot] at @s run function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/3.main

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Shot,limit=1] run schedule function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/2.tick 1t