#> asset:mob/0073.clutch_spider/tick/2.2.landing
#
# 着弾時
#
# @within function asset:mob/0073.clutch_spider/tick/2.3.shot

# 移動する
    tp @s ^ ^ ^-0.5 facing entity @p[gamemode=!spectator] eyes

# 演出
    playsound entity.enderman.teleport hostile @a ~ ~ ~