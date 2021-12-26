#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.4.shot_hit_water
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.3.shot_main

# 魔法、水属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 30.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/

# ふわり
    effect give @s minecraft:levitation 1 1 true

# リセット
    data remove storage lib: Argument

# ショットを消す
    kill @e[type=armor_stand,tag=295Fa.Shot,sort=nearest,limit=1]