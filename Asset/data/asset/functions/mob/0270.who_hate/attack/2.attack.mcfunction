#> asset:mob/0270.who_hate/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0270.who_hate/attack/1.trigger

# 演出
    particle flame ~ ~1 ~ 0.8 0.8 0.8 0 20 normal @a
    playsound block.lava.extinguish hostile @a ~ ~ ~ 2 1 0

# 属性ダメージ
   # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.4f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # プレイヤー対象に
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        function lib:damage/reset