#> asset:mob/0228.frost_eye/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0228.frost_eye/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..6] run particle snowflake ~ ~1.6 ~ 0.5 0.3 0.5 0 30 normal @a

# 攻撃
    # 与えるダメージ
    data modify storage lib: Argument.Damage set value 16f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
# リセット
    data remove storage lib: Argument
