#> asset:mob/0185.tutankhamen/tick/magic_square/09.3rd_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/04.3rd_square

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 30f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..4] run function lib:damage/
# リセット
    data remove storage lib: Argument