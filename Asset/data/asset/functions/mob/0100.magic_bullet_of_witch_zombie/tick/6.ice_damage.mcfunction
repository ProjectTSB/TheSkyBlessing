#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/6.ice_damage
#
#
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/5.ice

# 鈍化を付与
    effect give @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] slowness 5 2 true

# ダメージ
    data modify storage lib: Argument.Damage set value 4.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @a[gamemode=!spectator,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument