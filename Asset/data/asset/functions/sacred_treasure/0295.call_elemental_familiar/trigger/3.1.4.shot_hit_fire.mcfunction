#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.4.shot_hit_fire
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.3.shot_main

# 魔法、火属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 30.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/

# 燃える
    data modify entity @s Fire set value 60.0

# リセット
    function lib:damage/reset

# ショットを消す
    kill @e[type=armor_stand,tag=295Fa.Shot,sort=nearest,limit=1]