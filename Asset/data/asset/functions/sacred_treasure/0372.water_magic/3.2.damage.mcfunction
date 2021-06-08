#> asset:sacred_treasure/0372.water_magic/3.2.damage
#
#
#
# @within function asset:sacred_treasure/0372.water_magic/3.1.loop

# 自分にタグ付与
    tag @s add 60.This
    tag @e[tag=Enemy,distance=..5,sort=random,limit=1] add 60.Target

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.2f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=60.This,limit=1] 60.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[tag=60.Target] run function lib:damage/

#演出
    execute at @e[tag=60.Target] run particle minecraft:block water ~ ~1 ~ 0.1 1.3 0.1 10 30
    playsound entity.dolphin.splash master @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash master @a ~ ~ ~ 1 1
    playsound entity.dolphin.splash master @a ~ ~ ~ 1 0

# リセット
    data remove storage lib: Argument
    tag @s remove 60.This
    tag @e[tag=60.Target] remove 60.Target