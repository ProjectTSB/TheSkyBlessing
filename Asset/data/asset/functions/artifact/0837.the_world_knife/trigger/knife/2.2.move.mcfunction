#> asset:artifact/0837.the_world_knife/trigger/knife/2.2.move
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/knife/1.tick

#> private
# @private
    #declare tag Landing

# スコアを増やし続ける
    scoreboard players add @s N9.Time 1

# 演出
    particle crit ~ ~0.8 ~ 0 0 0 0 0
# 着弾検知
    execute positioned ~ ~0.8 ~ if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute positioned ~ ~0.8 ~ unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing
# 着弾処理
    execute positioned ~ ~0.8 ~ if entity @s[tag=Landing] run function asset:artifact/0837.the_world_knife/trigger/knife/3.damage

# 進ませる
    tp @s ^ ^ ^1 ~ ~
# スコアが一定以上なら死
    execute if score @s N9.Time matches 60.. run kill @s
