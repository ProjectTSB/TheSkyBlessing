#> asset:mob/0182.skull_raven/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0182.skull_raven/attack/1.trigger

# 演出
   execute at @a[tag=Victim,distance=..60] run particle minecraft:lava ~ ~0.5 ~ 0.8 0.8 0.8 0.1 20 normal @a
   execute at @a[tag=Victim,distance=..60] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8 0

# エフェクト
    effect give @a[tag=Victim,distance=..60] levitation 1 5 true

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 14.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @a[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument