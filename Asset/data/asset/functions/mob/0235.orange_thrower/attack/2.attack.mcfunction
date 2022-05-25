#> asset:mob/0235.orange_thrower/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0235.orange_thrower/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle block orange_concrete ~ ~1.2 ~ 0.5 0.5 0.5 0 100 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.generic.explode hostile @a ~ ~ ~ 0.3 1 0

# 効果
    effect give @p[tag=Victim,distance=..6] saturation 3 0 true
    effect give @p[tag=Victim,distance=..6] slowness 3 2 true

# ダメージ
    data modify storage lib: Argument.Damage set value 22f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって橙色になった。","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってみかんを食わされ窒息した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
