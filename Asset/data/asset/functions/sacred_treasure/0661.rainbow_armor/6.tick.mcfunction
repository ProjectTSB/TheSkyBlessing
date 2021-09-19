#> asset:sacred_treasure/0661.rainbow_armor/6.tick
#
#
#
# @within function asset:sacred_treasure/0661.rainbow_armor/5.schedule_loop

# 視界の妨害となるし、走ってる時のみにしたほうがなんかいいので走ってる時のみ演出
    execute if predicate lib:is_sprinting rotated ~ 0 positioned ^ ^ ^-0.3 run function asset:sacred_treasure/0661.rainbow_armor/9.sprinting_particle

# バフ
    effect give @s jump_boost 1 0 true
    effect give @s speed 1 0 true