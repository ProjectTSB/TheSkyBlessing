#> asset:sacred_treasure/0262.angel_ray_lv.1/effect/find_target
#
#
#
# @within function asset:sacred_treasure/0262.angel_ray_lv.1/effect/*

tag @e[type=#lib:living,tag=!Uninterferable,distance=..0.75] add TargetCandidate
execute if entity @s[distance=..12] positioned ^ ^ ^0.5 run function asset:sacred_treasure/0262.angel_ray_lv.1/effect/find_target