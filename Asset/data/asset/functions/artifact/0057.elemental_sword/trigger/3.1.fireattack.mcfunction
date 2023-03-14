#> asset:artifact/0057.elemental_sword/trigger/3.1.fireattack
#
# 火属性
#
# @within function asset:artifact/0057.elemental_sword/trigger/3.main


# 演出
    particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.1 100
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6

# ダメージ設定
    # 与えるダメージ = 30
        data modify storage lib: Argument.Damage set value 80.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset