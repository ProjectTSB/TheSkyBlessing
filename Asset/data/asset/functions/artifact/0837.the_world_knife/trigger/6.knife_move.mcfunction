#> asset:artifact/0837.the_world_knife/trigger/6.knife_move
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/4.tick

#> private
# @private
    #declare tag Landing

# スコアを増やし続ける
    scoreboard players add @s N9.Time 1

# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# 演出
    particle crit ~ ~ ~ 0 0 0 0 0

# 着弾処理
    execute if entity @s[tag=Landing] run function asset:artifact/0837.the_world_knife/trigger/7.knife_damage

# 進ませる
    tp @s ^ ^ ^1 ~ ~

# スコアが一定以上なら死
    execute if score @s N9.Time matches 60.. run kill @s