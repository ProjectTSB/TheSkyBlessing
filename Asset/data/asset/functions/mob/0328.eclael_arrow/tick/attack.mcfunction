#> asset:mob/0328.eclael_arrow/tick/attack
#
# 攻撃判定
#
# @within function asset:mob/0328.eclael_arrow/tick/move

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 38f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function lib:damage/
# リセット
    function lib:damage/reset

# 終了
    scoreboard players set @s 94.DamageInterval 5