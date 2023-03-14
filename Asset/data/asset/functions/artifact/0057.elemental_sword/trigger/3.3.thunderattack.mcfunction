#> asset:artifact/0057.elemental_sword/trigger/3.3.thunderattack
#
# 雷属性
#
# @within function asset:artifact/0057.elemental_sword/trigger/3.main


    # 演出
        particle crit ~ ~3 ~ 0.025 3 0.025 0 100 normal @a
        playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2

# ダメージ設定
    # 与えるダメージ = 30
        data modify storage lib: Argument.Damage set value 80.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset