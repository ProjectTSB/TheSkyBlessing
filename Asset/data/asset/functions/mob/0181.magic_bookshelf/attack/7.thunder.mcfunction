#> asset:mob/0181.magic_bookshelf/attack/7.thunder
#
#
#
# @within function asset:mob/0181.magic_bookshelf/attack/2.attack

# 演出
    execute at @p[tag=Victim,distance=..6] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0181.magic_bookshelf/attack/8.thunder_particle
    execute at @p[tag=Victim,distance=..6] run particle dust 1 1 0 1 ~ ~2 ~ 0.05 1.7 0.05 0 120 normal @a
    execute at @p[tag=Victim,distance=..6] run particle smoke ~ ~0.3 ~ 0.15 0.15 0.15 0.2 50 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 1.6 0
    execute at @p[tag=Victim,distance=..6] run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.6 0.8 0

# 雷属性攻撃
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 33f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの雷の魔法で心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset