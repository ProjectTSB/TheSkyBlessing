#> asset:mob/0060.self_destructor/tick/5.damage_distance
#
# ダメージによる距離減衰
#
# @within function asset:mob/0060.self_destructor/tick/4.self-desruct

# ダメージ量
    execute if entity @s[distance=..7] run data modify storage lib: Argument.Damage set value 12f
    execute if entity @s[distance=..4] run data modify storage lib: Argument.Damage set value 18f
    execute if entity @s[distance=..3] run data modify storage lib: Argument.Damage set value 24f
    execute if entity @s[distance=..2] run data modify storage lib: Argument.Damage set value 28f
    execute if entity @s[distance=..1] run data modify storage lib: Argument.Damage set value 32f

# modifier
    execute as @e[type=zombie,tag=this,distance=..7,limit=1] run function lib:damage/modifier

# ダメージ
    function lib:damage/