#> asset:mob/0105.potion_projectile/tick/water/2.water_damage
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/water/1.break

# ダメージとデバフ
    effect give @a[gamemode=!creative,gamemode=!spectator,distance=..3] slowness 5 2 true
    data modify storage lib: Argument.Damage set value 25.0
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sの氷の薬品により氷に閉ざされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function lib:damage/
    data remove storage lib: Argument