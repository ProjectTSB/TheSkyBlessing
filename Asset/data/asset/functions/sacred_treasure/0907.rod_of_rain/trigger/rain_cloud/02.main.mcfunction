#> asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/02.main
#
# 雨雲のメイン処理
#
# @within function asset:sacred_treasure/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop

# スコア
    scoreboard players add @s P8.Tick 1

# 演出
    execute if entity @s[scores={P8.Tick=..100}] run particle minecraft:campfire_signal_smoke ~ ~ ~ 1.2 0.1 1.2 0 4 force @a[distance=..100]
    particle minecraft:rain ~ ~ ~ 1.3 0 1.3 0 20 normal @a
    playsound minecraft:weather.rain player @a ~ ~ ~ 0.5 1 0

# 消滅
    execute unless block ~ ~ ~ #lib:no_collision_without_fluid run kill @s
    execute if entity @s[scores={P8.Tick=400..}] run kill @s