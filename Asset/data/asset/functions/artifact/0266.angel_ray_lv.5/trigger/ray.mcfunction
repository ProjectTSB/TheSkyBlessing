#> asset:artifact/0266.angel_ray_lv.5/trigger/ray
#
#
#
# @within function
#   asset:artifact/0266.angel_ray_lv.5/trigger/3.main
#   asset:artifact/0266.angel_ray_lv.5/trigger/recursive

# 経過tickの加算
    scoreboard players add @s 7E.HolySymbol 1
# VFX
    function asset:artifact/0266.angel_ray_lv.5/trigger/vfx/
# 10tickで消える
    execute if score @s 7E.HolySymbol matches 8.. run kill @s