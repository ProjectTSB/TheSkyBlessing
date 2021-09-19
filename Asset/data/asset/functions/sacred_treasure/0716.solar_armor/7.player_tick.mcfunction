#> asset:sacred_treasure/0716.solar_armor/7.player_tick
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/6.schedule_loop

# 光度で色々変わる

# 光度0-5では暗視
    execute if predicate asset:sacred_treasure/0715.solar_armor/0-5 run effect give @s night_vision 10 0 true

# 光度5-10では移動速度上昇1と演出
    execute if predicate asset:sacred_treasure/0715.solar_armor/6-10 run function asset:sacred_treasure/0716.solar_armor/light_level/6-10

# 光度11-15では移動速度上昇2と演出
    execute if predicate asset:sacred_treasure/0715.solar_armor/11-15 run function asset:sacred_treasure/0716.solar_armor/light_level/11-15