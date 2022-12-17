#> asset:mob/0304.crystal_bullet/tick/damage
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/2.tick

# タグつける
    tag @s add 8G.This

# 演出
    particle lava ~ ~1 ~ 0 1 0 0 20 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 1
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# 攻撃を与える
    # 与えるダメージ = 100
        data modify storage lib: Argument.Damage set value 100f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=armor_stand,tag=8G.This,limit=1] 8G.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=8G.Target,tag=!Uninterferable] run function lib:damage/
# リセット
    function lib:damage/reset

#自身を殺す
    kill @s