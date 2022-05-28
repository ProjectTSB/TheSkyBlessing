#> asset:mob/0059.jack_o_lantern/tick/3.missile/4.damage
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/3.missile/3.tackle

# ぶつかる
    tp @s ~ ~ ~

# 着弾の演出
    playsound minecraft:entity.generic.explode hostile @a
    particle explosion ~ ~ ~ 1 1 1 0 10

# 火属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 9.0
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
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset
