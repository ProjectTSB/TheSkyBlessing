#> asset:mob/0078.messenger_of_thunder/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/attack/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 250
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.5 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.5 0 0

# ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 22.5d
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @p[tag=Victim,distance=..50] run function lib:damage/
    # リセット
        data remove storage lib: Argument
