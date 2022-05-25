#> asset:mob/0080.fukotsu/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0080.fukotsu/attack/1.trigger

    execute at @a[tag=Victim,distance=..5] run particle dust 1 1 0 1 ~ ~2 ~ 0 2.5 0 0 100
    playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2

# 引数の設定
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 19.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 範囲5m以内の攻撃先を対象に
    execute as @a[tag=Victim,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset