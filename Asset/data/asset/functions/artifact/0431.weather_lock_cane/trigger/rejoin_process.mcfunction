#> asset:artifact/0431.weather_lock_cane/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# リログ時、効果が終わっていた場合
    execute unless data storage asset:temp BZ as @a[tag=BZ.Activate] run function asset:artifact/0431.weather_lock_cane/trigger/weather_effect_clear

# リログ時、効果をもらっていない場合
    execute if data storage asset:temp BZ as @a[tag=!BZ.Activate] run function asset:artifact/0431.weather_lock_cane/trigger/4.weather_effect