#> asset:artifact/0431.weather_lock_cane/trigger/weather_lock
#
#
#
# @within function
#       asset:artifact/0431.weather_lock_cane/trigger/3.main
#       asset:artifact/0431.weather_lock_cane/trigger/weather_lock

# 天候を固定する（コマンドで変更されるの対処）
    execute if data storage asset:temp BZ{Weather:Sunny} unless predicate lib:weather/is_sunny run weather clear
    execute if data storage asset:temp BZ{Weather:Rain} unless predicate lib:weather/is_raining run weather rain
    execute if data storage asset:temp BZ{Weather:Thunder} unless predicate lib:weather/is_thundering run weather thunder

# ループする
    execute if data storage asset:temp BZ run schedule function asset:artifact/0431.weather_lock_cane/trigger/weather_lock 1t replace