#> asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/main
#
# 演出やバフなどを行う
#
# @within function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop

# バフ
    execute unless entity @s[predicate=!lib:weather/is_raining,predicate=!lib:weather/is_thundering,predicate=!lib:is_in_water/include_flowing] run function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/effect

# 演出
    particle dust 0.439 0.737 1 0.8 ~ ~1.7 ~ 1 0.2 1 0 1 normal
    particle dust 0.494 0.545 1 0.8 ~ ~1.2 ~ 1 0.3 1 0 2 normal
    particle dust 0.686 0.49 1 0.8 ~ ~0.4 ~ 1 0.3 1 0 1 normal
    particle dust 1 0.549 1 0.8 ~ ~0.2 ~ 1 0.1 1 0 1 normal

# スケジュールループ
    schedule function asset:sacred_treasure/0711.deep_sea_coral_crown/trigger/fullset/loop 1t replace