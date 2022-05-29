#> asset:sacred_treasure/0172.icicle/trigger/laser/damage
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/5.damage_laser


# タグ付与する
    tag @s add 4S.This

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 200.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=4S.This,limit=1] 4S.UserID run function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,distance=..4] run function lib:damage/
# リセット
    function lib:damage/reset
# 演出
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0

# タグを消す
    tag @s remove 4S.This

# 吸引
# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 0.4
    data modify storage lib: Argument.KnockbackResist set value true
    execute as @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..5] at @s facing entity @e[type=area_effect_cloud,tag=4S.Laser,sort=nearest,limit=1] eyes rotated ~ 0 run function lib:motion/
# リセット
    data remove storage lib: Argument
