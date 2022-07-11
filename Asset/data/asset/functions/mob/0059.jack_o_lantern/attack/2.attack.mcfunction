#> asset:mob/0059.jack_o_lantern/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0059.jack_o_lantern/attack/1.trigger

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0 10 normal @a

# 不運を付与
    effect give @p[tag=Victim,distance=..6] unluck 15 2 false

# 火属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 14.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによりカボチャの怨念を受け、燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより呪いの炎を受けた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset
