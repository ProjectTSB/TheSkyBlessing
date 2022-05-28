#> asset:mob/0181.magic_bookshelf/attack/5.water
#
#
#
# @within function asset:mob/0181.magic_bookshelf/attack/2.attack

# 演出
    execute at @p[tag=Victim,distance=..6] positioned ~ ~0.2 ~ rotated ~ 0 run function asset:mob/0181.magic_bookshelf/attack/6.water_particle
    execute at @p[tag=Victim,distance=..6] run particle splash ~ ~1.2 ~ 0.4 0.5 0.4 0 200 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.player.splash.high_speed hostile @a ~ ~1.2 ~ 0.8 0.8 0
    execute at @p[tag=Victim,distance=..6] run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.6 0.8 0

# 水属性攻撃
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 33f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの水の魔法に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset