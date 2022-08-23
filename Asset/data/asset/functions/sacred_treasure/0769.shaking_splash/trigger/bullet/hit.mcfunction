#> asset:sacred_treasure/0769.shaking_splash/trigger/bullet/hit
#
# 弾が当たったときの処理
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/main

# 演出
    playsound block.bubble_column.upwards_inside player @a ~ ~ ~ 0.8 2 0
    playsound entity.generic.swim player @a ~ ~ ~ 1 2 0

# 自身を検知する用Tagを付与
    tag @s add LD.This

# ダメージ
    data modify storage lib: Argument.Damage set value 400.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    execute at @s as @a if score @s UserID = @e[type=marker,tag=LD.This,distance=..0.01,sort=nearest,limit=1] LD.UserID run function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,dx=0,sort=nearest,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 消滅
    kill @s