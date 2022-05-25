#> asset:mob/0124.skull_harpy/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0124.skull_harpy/attack/1.trigger



# 演出
   execute at @a[tag=Victim] run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   execute at @a[tag=Victim] run playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @a[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset