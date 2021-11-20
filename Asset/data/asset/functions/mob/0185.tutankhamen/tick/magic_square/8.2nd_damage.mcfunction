#> asset:mob/0185.tutankhamen/tick/magic_square/8.2nd_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/3.2nd_vfx

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 15f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
# リセット
    data remove storage lib: Argument