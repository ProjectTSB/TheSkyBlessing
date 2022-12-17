#> asset:mob/1004.tultaria/tick/skill/dash_slash/6.delay_slash
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/5.delay_position

# 遅延斬撃の処理
    function asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_swoosh
    execute if score @s RW.Tick matches 48 rotated ~190 ~290 run function asset:mob/1004.tultaria/tick/skill/dash_slash/vfx/1
    execute if score @s RW.Tick matches 49 rotated ~200 ~20 run function asset:mob/1004.tultaria/tick/skill/dash_slash/vfx/2
    execute if score @s RW.Tick matches 50 rotated ~100 ~180 run function asset:mob/1004.tultaria/tick/skill/dash_slash/vfx/3
    execute if score @s RW.Tick matches 51 rotated ~360 ~230 run function asset:mob/1004.tultaria/tick/skill/dash_slash/vfx/4
    execute if score @s RW.Tick matches 52 rotated ~190 ~290 run function asset:mob/1004.tultaria/tick/skill/dash_slash/vfx/1