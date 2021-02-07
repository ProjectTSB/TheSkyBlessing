#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.4.shot_hit
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.3.shot_main

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 10.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/

# リセット
    data remove storage lib: Argument
    data remove storage chuz: MPMax

# ショットを消す
    kill @e[type=armor_stand,tag=ChuzFairyShot,sort=nearest,limit=1]