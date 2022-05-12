#> asset:mob/0059.jack_o_lantern/attack/3.glowing_state
#
#
#
# @within function asset:mob/0059.jack_o_lantern/attack/2.attack

# 発光状態(tick参照)のとき火属性攻撃

# 演出
    particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0 10 normal @a

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
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument
