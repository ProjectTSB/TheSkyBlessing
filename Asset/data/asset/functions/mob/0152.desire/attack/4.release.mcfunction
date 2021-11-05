#> asset:mob/0152.desire/attack/4.release
#
#
#
# @within function asset:mob/0152.desire/attack/2.attack


# 与えるダメージ
    data modify storage lib: Argument.Damage set value 20f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    data remove storage lib: Argument

# タグリセット
    tag @s remove AttackThis
    tag @s remove 48.HasMP