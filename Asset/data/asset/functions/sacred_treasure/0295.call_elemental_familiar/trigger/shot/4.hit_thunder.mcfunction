#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/4.hit_thunder
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/shot/3.main

# 魔法、雷属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 40.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/

# しびれる
    #effect give @s slowness 3 1

# リセット
    function lib:damage/reset

# ショットを消す
    kill @e[type=armor_stand,tag=87.Shot,sort=nearest,limit=1]