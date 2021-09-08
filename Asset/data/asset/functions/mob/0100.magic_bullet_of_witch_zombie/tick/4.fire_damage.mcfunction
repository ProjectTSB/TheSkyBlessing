#> asset:mob/0100.magic_bullet_of_witch_zombie/tick/4.fire_damage
#
#
#
# @within function asset:mob/0100.magic_bullet_of_witch_zombie/tick/3.fire

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 7.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument