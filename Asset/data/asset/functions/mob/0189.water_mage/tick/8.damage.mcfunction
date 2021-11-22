#> asset:mob/0189.water_mage/tick/8.damage
#
#
#
# @within function asset:mob/0189.water_mage/tick/7.vfx

# リセット
    scoreboard players set @s 59.Tick 171

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 18f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[distance=..1.5] run function lib:damage/
# リセット
    data remove storage lib: Argument