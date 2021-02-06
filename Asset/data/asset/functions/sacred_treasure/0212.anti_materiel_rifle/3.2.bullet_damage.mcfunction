#> asset:sacred_treasure/0212.anti_materiel_rifle/3.2.bullet_damage
#
# 神器のメイン処理部
#
# @within
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 演出
    particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 10
    particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99
    playsound minecraft:entity.generic.explode hostile @a

# ダメージ設定
    # 与えるダメージ = 100
        data modify storage lib: Argument.Damage set value 100.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        function lib:damage/