#> asset:sacred_treasure/0769.shaking_splash/trigger/bullet/landing
#
#
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/main

# 演出
    playsound block.fire.extinguish player @a ~ ~ ~ 0.2 1.5 0
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 1.3 2 0
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 1.3 0.5 0
    playsound block.bubble_column.upwards_ambient player @a ~ ~ ~ 1.3 1 0
    particle minecraft:dust_color_transition 0 1 1 1.4 1 1 1 ~ ~ ~ 1 1 1 0 300
    particle dolphin ~ ~ ~ 1 1 1 0 80
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 80

# 自身を検知する用Tagを付与
    tag @s add LD.This

# ダメージ
    data modify storage lib: Argument.Damage set value 300.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    execute at @s as @a if score @s UserID = @e[type=marker,tag=LD.This,distance=..0.01,sort=nearest,limit=1] LD.UserID run function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset


# 消滅
    kill @s