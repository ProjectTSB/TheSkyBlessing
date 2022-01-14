#> asset:mob/0065.night_shadow/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0065.night_shadow/tick/1.trigger


# 煙を纏う
    particle smoke ~ ~ ~ 0.4 0.4 0.4 0 2 normal @a

# 太陽が出てなると消滅
    execute if predicate lib:is_day run function asset:mob/0065.night_shadow/tick/3.sunrise_lapse