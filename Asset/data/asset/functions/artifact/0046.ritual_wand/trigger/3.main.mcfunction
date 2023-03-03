#> asset:artifact/0046.ritual_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0046.ritual_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 現在の天気から切り替える天気を取得する
    execute if predicate lib:weather/is_sunny run scoreboard players set @s Temporary 0
    execute if predicate lib:weather/is_raining run scoreboard players set @s Temporary 1
    execute if predicate lib:weather/is_thundering run scoreboard players set @s Temporary 2
# 晴れの時25%の確率で雷雨に切り替え
    execute if predicate lib:weather/is_sunny if predicate lib:random_pass_per/25 run scoreboard players set @s Temporary 3

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 5 0 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.creeper.death player @s ~ ~ ~ 20 0.2

# 天気を切り替える
    execute if score @s Temporary matches 0 run weather rain
    execute if score @s Temporary matches 0 run tellraw @s {"text":"天気が雨に切り替わった"}
    execute if score @s Temporary matches 1..2 run weather clear
    execute if score @s Temporary matches 1..2 run tellraw @s {"text":"天気が晴れに切り替わった"}
    execute if score @s Temporary matches 3 run weather thunder
    execute if score @s Temporary matches 3 run tellraw @s {"text":"天気が雷雨に切り替わった"}

scoreboard players reset @s Temporary