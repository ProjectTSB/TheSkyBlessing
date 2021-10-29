#> asset:mob/0079.thundercloud/tick/5.thunder_damage
#
#
#
# @within function asset:mob/0079.thundercloud/tick/4.fall_thunder

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 12.5f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.2] run function lib:damage/
# リセット
    data remove storage lib: Argument

