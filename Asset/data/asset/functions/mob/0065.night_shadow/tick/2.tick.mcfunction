#> asset:mob/0065.night_shadow/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0065.night_shadow/tick/1.trigger

#> asset:mob/0065.night_shadow/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0065.night_shadow/tick/1.trigger

# 煙を纏う
    particle smoke ~ ~ ~ 0.4 0.4 0.4 0 2 normal @a

# プレイヤーが近くにいない場合透明化
    execute unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..4] run effect give @s invisibility 1 0 true

# 太陽が出ていればなると消滅
    execute unless predicate asset:mob/0065.night_shadow/night run function asset:mob/0065.night_shadow/tick/3.sunrise_lapse