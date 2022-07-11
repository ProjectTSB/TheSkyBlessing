#> asset:mob/0142.honey_soldier/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0142.honey_soldier/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..32] run particle falling_honey ~ ~1.2 ~ 0.4 0.4 0.4 0 30 normal @a
    execute at @p[tag=Victim,distance=..32] run particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:block.honey_block.place hostile @a ~ ~ ~ 0.7 1 0

# デバフ
    effect give @a[tag=Victim,distance=..32] weakness 3 1 true
    effect give @a[tag=Victim,distance=..32] mining_fatigue 3 1 true
    effect give @a[tag=Victim,distance=..32] poison 3 1 true

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 28f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってべとべとに斬り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset