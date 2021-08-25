#> asset:mob/0098.element_zombie/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0098.element_zombie/attack/1.trigger

# 演出
    execute at @p[tag=Victim,distance=..2] run particle flame ~ ~1.2 ~ 0.3 0.4 0.3 0 20 normal @a
    execute at @p[tag=Victim,distance=..2] run playsound entity.blaze.shoot master @a ~ ~ ~ 0.6 1 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 補正functionを実行
        function lib:damage/modifier
    # 範囲5m以内のゾンビを対象に
        execute as @p[tag=Victim,distance=..2] run function lib:damage/
    # リセット
        data remove storage lib: Argument