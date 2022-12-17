#> asset:mob/0304.crystal_bullet/tick/damage
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/2.tick

# タグつける
    tag @s add 8G.This

# 演出


# 攻撃を与える
    # 与えるダメージ = 100
        data modify storage lib: Argument.Damage set value 100f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    execute as @a if score @s UserID = @e[type=vex,tag=8G.This,limit=1] 8G.UserID run function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,type=!player,tag=8G.Target,tag=!Uninterferable] run function lib:damage/
# リセット
    function lib:damage/reset

#自身を殺す
    kill @s
    tp ~ -9999 ~