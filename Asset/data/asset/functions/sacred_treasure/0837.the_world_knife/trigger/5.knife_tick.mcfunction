#> asset:sacred_treasure/0837.the_world_knife/trigger/5.knife_tick
#
#
#
# @within function asset:sacred_treasure/0837.the_world_knife/trigger/4.tick

# startがないならスコアを増やし続ける
    scoreboard players add @s N9.Time 1

# 一定時間になったら周囲のナイフにも動くタグを付与する。演出もする
    execute if score @s N9.Time matches 30.. run playsound item.trident.throw player @a[distance=..20] ~ ~ ~ 1 1 1
    execute if score @s N9.Time matches 30.. run tag @e[type=armor_stand,tag=N9.Knife,distance=..40] add N9.Start