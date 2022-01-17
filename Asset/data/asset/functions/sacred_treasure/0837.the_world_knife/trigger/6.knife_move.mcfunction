#> asset:sacred_treasure/0837.the_world_knife/trigger/6.knife_move
#
#
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/4.tick
    #declare tag Landing

# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# 着弾処理
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/0837.the_world_knife/trigger/7.knife_damage

# 進ませる
    tp @s ^ ^ ^1 ~ ~