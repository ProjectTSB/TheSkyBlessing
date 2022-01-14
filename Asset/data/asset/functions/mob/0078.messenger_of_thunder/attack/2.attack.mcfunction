#> asset:mob/0078.messenger_of_thunder/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/attack/1.trigger

# 演出
    execute at @p[tag=Victim] run particle dust 1 1 0 1.3 ~ ~3 ~ 0.25 2.5 0.25 0 80 normal @a
    execute at @p[tag=Victim] run particle dust 0.3 0.3 0.3 2 ~ ~6 ~ 1 0.3 1 0 40 normal @a
    execute at @p[tag=Victim] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 2.0 0

# 雷魔法属性ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 4.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        data remove storage lib: Argument
