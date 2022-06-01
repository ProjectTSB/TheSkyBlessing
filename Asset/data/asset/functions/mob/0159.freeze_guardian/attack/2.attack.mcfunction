#> asset:mob/0159.freeze_guardian/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0159.freeze_guardian/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 40 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound block.glass.break hostile @a ~ ~ ~ 0.7 2

# 鈍足付与
    effect give @p[tag=Victim,distance=..6] slowness 3 2 true

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 30f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって氷像にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって凍り付き、斬り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
