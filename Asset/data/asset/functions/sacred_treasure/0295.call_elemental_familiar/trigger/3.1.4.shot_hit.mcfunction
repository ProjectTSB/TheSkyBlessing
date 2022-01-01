#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.4.shot_hit
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.3.shot_main

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 35.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/

# リセット
    data remove storage lib: Argument

# ショットを消す
    kill @e[type=armor_stand,tag=295Fa.Shot,sort=nearest,limit=1]