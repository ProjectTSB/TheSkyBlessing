#> asset:mob/0115.jewel_bullet/tick/3.damage
#
#
#
# @within function asset:mob/0115.jewel_bullet/tick/2.tick

# 固定4ダメージ
    data modify storage lib: Argument.Damage set value 10.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.ByPassResist set value 1b
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,dx=0] run function lib:damage/
    data remove storage lib: Argument

# 消滅
    kill @s