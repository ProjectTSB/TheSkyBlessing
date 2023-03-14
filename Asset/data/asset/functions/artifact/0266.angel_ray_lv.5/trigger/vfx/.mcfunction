#> asset:artifact/0266.angel_ray_lv.5/trigger/vfx/
#
#
#
# @within function asset:artifact/0266.angel_ray_lv.5/trigger/ray

execute if score @s 7E.HolySymbol matches 1..5 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/line
execute if score @s 7E.HolySymbol matches 2..4 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/line
execute if score @s 7E.HolySymbol matches 3..3 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/line_2
execute if score @s 7E.HolySymbol matches 3..3 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/line_2

execute if score @s 7E.HolySymbol matches 3..3 positioned ^ ^ ^3.0 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/ripple_small
execute if score @s 7E.HolySymbol matches 3..3 positioned ^ ^ ^4.0 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/ripple_large
execute if score @s 7E.HolySymbol matches 3..3 positioned ^ ^ ^5.0 run function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/ripple_small