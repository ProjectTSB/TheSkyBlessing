#> asset:mob/1006.green_star/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/1006.green_star/attack/1.trigger

# 効果
    effect give @a[tag=Victim,distance=..30] poison 10 2

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 15.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim,distance=..30] run function lib:damage/
# リセット
    function lib:damage/reset