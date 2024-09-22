#> asset:artifact/0837.the_world_knife/trigger/knife/2.1.pause
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/knife/1.tick

# スコアを増やし続ける
    scoreboard players add @s N9.Time 1

# 一定時間になったらナイフに動くタグを付与する
    execute if score @s N9.Time matches 15 run playsound item.trident.throw player @a[distance=..20] ~ ~0.8 ~ 1 1 1
    execute if score @s N9.Time matches 15.. run tag @s add N9.Start
