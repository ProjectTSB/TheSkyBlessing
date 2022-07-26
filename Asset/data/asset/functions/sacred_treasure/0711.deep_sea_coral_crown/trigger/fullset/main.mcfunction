#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/main
#
#
#
# @within function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run effect give @s water_breathing 1 0 true
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run effect give @s night_vision 10 0 true

# 演出
    particle dust 0.788 0.902 1.000 0.5 ~ ~1.7 ~ 0.75 0.2 0.75 0 1 normal
    particle dust 0.776 0.800 1.000 0.5 ~ ~1.2 ~ 0.75 0.3 0.75 0 2 normal
    particle dust 0.882 0.808 1.000 0.5 ~ ~0.4 ~ 0.75 0.3 0.75 0 1 normal
    particle dust 1.000 0.820 1.000 0.5 ~ ~0.2 ~ 0.75 0.1 0.75 0 1 normal

# スケジュールループ
    schedule function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace