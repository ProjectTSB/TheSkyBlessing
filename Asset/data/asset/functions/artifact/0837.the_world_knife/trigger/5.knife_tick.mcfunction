#> asset:artifact/0837.the_world_knife/trigger/5.knife_tick
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/4.tick

# スコアを増やし続ける
    scoreboard players add @s N9.Time 1

# 一定時間になったらナイフに動くタグを付与する
    execute if score @s N9.Time matches 30 run playsound item.trident.throw player @a[distance=..20] ~ ~ ~ 1 1 1
    execute if score @s N9.Time matches 30.. run tag @s add N9.Start