#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.4.shot_hit
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.3.shot_main

# 魔法、無属性のダメージをぶちかます
    tag @s add HurtEntity
    data modify storage lib: Argument.Damage set value 8.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/

# ショットを消す
    kill @e[type=armor_stand,tag=ChuzFairyShot,sort=nearest,limit=1]