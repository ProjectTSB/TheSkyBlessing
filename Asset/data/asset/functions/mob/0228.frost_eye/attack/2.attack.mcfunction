#> asset:mob/0228.frost_eye/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0228.frost_eye/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle snowflake ~ ~1.6 ~ 0.5 0.3 0.5 0 30 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# 与えるダメージ
        data modify storage lib: Argument.Damage set value 12f
# 対象が鈍足状態ならダメージ増加
        execute if entity @p[tag=Victim,predicate=asset:mob/0228.frost_eye/slowness,distance=..6] run data modify storage lib: Argument.Damage set value 18f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって全身が霜に覆われ、凍死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset

# 鈍足を付与
    effect give @p[tag=Victim,distance=..6] slowness 4 3 true