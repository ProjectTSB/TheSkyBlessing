#> asset:mob/0073.clutch_spider/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0073.clutch_spider/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle poof ~ ~ ~ 0 0 0 0.2 10 normal
# 効果
    effect give @p[tag=Victim] slowness 7 0
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 7.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset
