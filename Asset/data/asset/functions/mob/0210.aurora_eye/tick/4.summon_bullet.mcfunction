#> asset:mob/0210.aurora_eye/tick/4.summon_bullet
#
# オーロラ弾を発射するよ
#
# @within function asset:mob/0210.aurora_eye/tick/2.tick

# 発射
    data modify storage api: Argument.ID set value 211
    execute anchored eyes positioned ^ ^ ^-0.25 run function api:mob/summon
    execute anchored eyes positioned ^ ^ ^-0.25 run tp @e[type=marker,scores={MobID=211},distance=..0.01] ~ ~ ~ facing entity @p[gamemode=!spectator] eyes

# スコアリセット
    scoreboard players reset @s 5U.Shoot