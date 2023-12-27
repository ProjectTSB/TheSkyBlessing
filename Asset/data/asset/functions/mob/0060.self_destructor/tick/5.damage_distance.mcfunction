#> asset:mob/0060.self_destructor/tick/5.damage_distance
#
# ダメージによる距離減衰
#
# @within function asset:mob/0060.self_destructor/tick/4.self-desruct

# ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの爆発に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの爆発により、微粒子になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'

# ダメージ量
    execute if entity @s[distance=..7.5] run data modify storage lib: Argument.Damage set value 12f
    execute if entity @s[distance=..4] run data modify storage lib: Argument.Damage set value 18f
    execute if entity @s[distance=..3] run data modify storage lib: Argument.Damage set value 24f
    execute if entity @s[distance=..2] run data modify storage lib: Argument.Damage set value 28f
    execute if entity @s[distance=..1] run data modify storage lib: Argument.Damage set value 32f

# ハード以上の場合ダメージが2倍
    execute if predicate api:global_vars/difficulty/min/hard store result storage lib: Argument.Damage int 2 run data get storage lib: Argument.Damage

# modifier
    execute as @e[type=zombie,tag=this,distance=..7.5,limit=1] run function lib:damage/modifier

# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset