#> asset:artifact/0372.water_magic/trigger/3.2.damage
#
#
#
# @within function asset:artifact/0372.water_magic/trigger/3.1.loop

# 自分にタグ付与
    tag @s add AC.This
    tag @e[tag=Enemy,distance=..5] add AC.Target

# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20f
    # 属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正function
        execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=AC.This,limit=1] AC.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[tag=AC.Target] run function lib:damage/

#演出
    execute at @e[tag=AC.Target] run particle minecraft:block water ~ ~1 ~ 0.1 1.3 0.1 10 30
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 1
    playsound entity.dolphin.splash player @a ~ ~ ~ 1 0

# リセット
    function lib:damage/reset
    tag @s remove AC.This
    tag @e[tag=AC.Target] remove AC.Target