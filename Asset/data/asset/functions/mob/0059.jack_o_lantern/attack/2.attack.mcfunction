#> asset:mob/0059.jack_o_lantern/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0059.jack_o_lantern/attack/1.trigger

# 演出
    playsound entity.witch.celebrate master @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim] run particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a

# 不運を付与
    effect give @p[tag=Victim] unluck 15 2 false

# 発光状態(tick参照)のとき火属性攻撃

    # 演出
        execute if score @s 1N.Glowing matches 20.. at @p[tag=Victim] run particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0 10 normal @a

    #火属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 5.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument

# スコア蓄積
    execute unless score @s 1N.Surprise matches 8.. run scoreboard players add @s 1N.Surprise 1