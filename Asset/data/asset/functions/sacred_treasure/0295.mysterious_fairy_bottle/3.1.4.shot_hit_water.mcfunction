#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.4.shot_hit_water
#
#
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.3.shot_main

# 魔法、水属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 8.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/

# リセット
    data remove storage lib: Argument

# ショットを消す
    kill @e[type=armor_stand,tag=ChuzFairyShot,sort=nearest,limit=1]