#> asset:mob/0185.tutankhamen/tick/burn_laser/06.damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 45f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
# リセット
    data remove storage lib: Argument