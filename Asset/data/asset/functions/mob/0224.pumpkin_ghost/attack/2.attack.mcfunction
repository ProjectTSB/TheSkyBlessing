#> asset:mob/0224.pumpkin_ghost/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0224.pumpkin_ghost/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    execute at @p[tag=Victim,distance=..6] run particle flame ~ ~1.2 ~ 0 0 0 0.05 30 normal @a
    particle dust 1 0.6 0 1 ~ ~0.5 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~0.5 ~ 0.4 0.4 0.4 0 20 normal @a
    particle block jack_o_lantern ~ ~0.5 ~ 0.1 0.1 0.1 0 20 normal @a

# 空腹を付与
    effect give @p[tag=Victim,distance=..6] hunger 3 1 false

# ダメージ設定
    data modify storage lib: Argument.Damage set value 9f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによりカボチャの怨念を受け、燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより呪いの炎を受けた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute as @a[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument

# 消滅
    kill @s
