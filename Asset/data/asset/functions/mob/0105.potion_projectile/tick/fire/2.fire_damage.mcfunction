#> asset:mob/0105.potion_projectile/tick/fire/2.fire_damage
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/fire/1.explosion

# 火属性ダメージ
    data modify storage lib: Argument.Damage set value 25f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..4] run function lib:damage/
    data remove storage lib: Argument