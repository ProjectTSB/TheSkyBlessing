#> asset:mob/1004.tultaria/tick/skill/dash_slash/5.delay_position
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# 1個目
    execute positioned ^ ^ ^-3 run function asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash
# 2個目
    execute positioned ^ ^ ^-7 run function asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash
# 3個目
    execute positioned ^ ^ ^-11 run function asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash
# 4個目
    execute positioned ^ ^ ^-14 run function asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash
# 5個目
    execute positioned ^ ^ ^-17 run function asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash

# ヒット処理
    execute if entity @a[tag=Hit,distance=..20] run function asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_hit