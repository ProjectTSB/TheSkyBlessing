#> asset:mob/0120.convict/tick/1.axe/3.impact
#
#
#
# @within function asset:mob/0120.convict/tick/1.axe/1.axe

# 爆発演出
    particle explosion ~ ~ ~ 0.6 0.4 0.6 0 10 normal @a
    particle lava ~ ~ ~ 1 0.4 1 0 50 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0

# ダメージ
    data modify storage lib: Argument.Damage set value 18f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..2.3] run function lib:damage/
    function lib:damage/reset