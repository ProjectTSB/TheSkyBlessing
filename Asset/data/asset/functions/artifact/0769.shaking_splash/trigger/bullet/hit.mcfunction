#> asset:artifact/0769.shaking_splash/trigger/bullet/hit
#
# 弾が敵に当たったときの処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/bullet/main

# 演出
    playsound block.fire.extinguish neutral @a ~ ~ ~ 0.2 1.5 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.5 2 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.5 0.5 0
    playsound block.bubble_column.upwards_ambient neutral @a ~ ~ ~ 0.5 1 0
    particle dust 0.8 500000000 1000000000 1.6 ~ ~ ~ 1 1 1 0 100
    particle dolphin ~ ~ ~ 1 1 1 0 80
    particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 80

# ダメージ
    data modify storage lib: Argument.Damage set value 450.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    execute at @a if score @s LD.UserID = @p UserID as @p run function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset

# ついでに火を消す
    execute if predicate world_manager:area/02.islands run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 air replace fire

# 消滅
    kill @s