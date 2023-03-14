#> asset:artifact/0907.rod_of_rain/trigger/rain_cloud/02.main
#
# 雨雲のメイン処理
#
# @within function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop

#> Private
# @private
    #declare score_holder $Temp

# スコア
    scoreboard players add @s P8.Tick 1

# 回転
    tp @s ~ ~ ~ ~2 ~

# 演出
    particle minecraft:rain ~ ~ ~ 1.8 0 1.8 0 40 normal @a
    particle dolphin ~ ~-3 ~ 2.4 2 2.4 0 20 normal @a
    particle dolphin ~ ~-5.7 ~ 2.4 0.1 2.4 0 20 normal @a
    particle dust 0 5000000 100000000 2 ~ ~ ~ 1.5 0.2 1.5 0 8

# 音
    scoreboard players operation $Temp Temporary = @s P8.Tick
    scoreboard players operation $Temp Temporary %= $22 Const
    execute if score $Temp Temporary matches 0 run playsound weather.rain player @a ~ ~ ~ 0.5 1.5 0

# 当たり判定の演出
    scoreboard players operation $Temp Temporary = @s P8.Tick
    scoreboard players operation $Temp Temporary %= $3 Const
    execute if score $Temp Temporary matches 0 positioned ~ ~-5.8 ~ run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/03.shapes

# 効果発動処理
    scoreboard players operation $Temp Temporary = @s P8.Tick
    scoreboard players operation $Temp Temporary %= $40 Const
    execute if score $Temp Temporary matches 0 positioned ~ ~-6 ~ run tag @e[type=#lib:living,tag=!Uninterferable,tag=!Object,distance=..4.5] add P8.TargetEntity
    execute if score $Temp Temporary matches 0 positioned ~ ~-3 ~ run tag @e[type=#lib:living,tag=!Uninterferable,tag=!Object,distance=..4.5] add P8.TargetEntity
    execute if score $Temp Temporary matches 0 positioned ~ ~-6 ~ run function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/04.effect

# 雨雲用スケジュールループ
    execute if entity @s[scores={P8.Tick=..400}] run schedule function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop 1t replace

# 消滅
    execute if entity @s[scores={P8.Tick=400..}] run kill @s

# リセット
    scoreboard players reset $Temp Temporary