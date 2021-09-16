#> asset:mob/0081.snow_cloud/tick/7.snow_damage
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/6.recursion

# 粉雪が積もる
    fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air

# 重めのデバフ
    effect give @s slowness 4 2 true
    effect give @s mining_fatigue 4 2 true

# 水魔法ダメージ
    data modify storage lib: Argument.Damage set value 6.0
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @s run function lib:damage/
    data remove storage lib: Argument
