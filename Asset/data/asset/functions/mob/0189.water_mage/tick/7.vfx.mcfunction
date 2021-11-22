#> asset:mob/0189.water_mage/tick/7.vfx
#
#
#
# @within function asset:mob/0189.water_mage/tick/6.shoot_magic

# 演出
    execute positioned ^ ^1 ^ run particle splash ~ ~ ~ 0.4 0.4 0.4 0 200 normal @a
    execute positioned ^ ^1 ^ run particle dust 0.192 0.192 0.933 1 ~ ~ ~ 0.4 0.4 0.4 0 50 normal @a
    execute positioned ^ ^1 ^ run playsound entity.player.splash.high_speed master @a ~ ~ ~ 0.6 1.5

# ダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..0.75] run function asset:mob/0189.water_mage/tick/8.damage

# 壁が目の前にあると終わる(スコアが170以上でリセットされる)
    execute unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 59.Tick 171
    execute unless block ^ ^ ^1.5 #lib:no_collision run scoreboard players set @s 59.Tick 171