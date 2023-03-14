#> asset:artifact/0907.rod_of_rain/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0907.rod_of_rain/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 雨雲を召喚
    summon marker ~ ~6 ~ {Tags:["P8.RainCloud","Object","Uninterferable"]}
    execute positioned ~ ~6 ~ run scoreboard players operation @e[type=marker,tag=P8.RainCloud,distance=..0.01] P8.UserID = @s UserID

# スケジュールループスタート
    schedule function asset:artifact/0907.rod_of_rain/trigger/rain_cloud/01.schedule_loop 1t replace