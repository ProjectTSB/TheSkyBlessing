#> asset:mob/0329.eclael_swordbeam/tick/attack
#
# 攻撃判定
#
# @within function asset:mob/0329.eclael_swordbeam/tick/move

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 45f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.2] run function lib:damage/
# リセット
    function lib:damage/reset

# 終了
    scoreboard players set @s 95.DamageInterval 8