#> asset:mob/0054.pumpkin_meteor/tick/suicide
#
#
#
# @within function asset:mob/0054.pumpkin_meteor/tick/2.tick

# 演出
    particle explosion ~ ~1.5 ~ 0 0 0 0 1 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1 0
    playsound entity.pillager.celebrate hostile @a ~ ~ ~ 0.8 1.8 0

# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.0004 as @e[type=zombie,scores={MobID=59},distance=..3,sort=nearest,limit=1] run function api:mob/get_max_health
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ByPassResist set value 1b
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @e[type=zombie,scores={MobID=59},distance=..3,sort=nearest,limit=1] run function lib:damage/

# キル
    kill @s