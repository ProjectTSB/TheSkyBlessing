#> asset:mob/0185.tutankhamen/tick/magic_square/11.5th_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/06.5th_square

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 40f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..8] run function lib:damage/
# リセット
    data remove storage lib: Argument