#> asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/5.hit_normal
#
# ショットヒット時
#
# @within function asset:sacred_treasure/0973.call_rod_spirit/trigger/shot/4.main_2

# 魔法、無属性のダメージをぶちかます
    data modify storage lib: Argument.Damage set value 65.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/

# リセット
    function lib:damage/reset

# ショットを消す
    kill @e[type=armor_stand,tag=87.Shot,sort=nearest,limit=1]