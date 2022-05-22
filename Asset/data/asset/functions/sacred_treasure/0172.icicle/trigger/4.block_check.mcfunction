#> asset:sacred_treasure/0172.icicle/trigger/4.block_check
#
#
#
# @within function
#       asset:sacred_treasure/0172.icicle/trigger/3.main
#       asset:sacred_treasure/0172.icicle/trigger/4.block_check

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing
# 距離限界で着弾したことにする
    execute if entity @s[tag=!Landing,distance=70..75] run tag @s add Landing

# 演出
    particle cloud ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/0172.icicle/trigger/5.laser_summon

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..75] run function asset:sacred_treasure/0172.icicle/trigger/4.block_check