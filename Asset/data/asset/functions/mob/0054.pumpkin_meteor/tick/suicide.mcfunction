#> asset:mob/0054.pumpkin_meteor/tick/suicide
#
#
#
# @within function asset:mob/0054.pumpkin_meteor/tick/2.tick

# 演出
    particle explosion ~ ~1.5 ~ 0 0 0 0 1 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1 0
    playsound ogg:mob.pillager.celebrate2 hostile @a ~ ~ ~ 1 2

# 割合ダメージ
    execute store result storage lib: Argument.Damage float 0.0004 as @e[type=zombie,scores={MobID=59},distance=..3,sort=nearest,limit=1] run function api:mob/get_max_health
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @e[type=zombie,scores={MobID=59},distance=..3,sort=nearest,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s