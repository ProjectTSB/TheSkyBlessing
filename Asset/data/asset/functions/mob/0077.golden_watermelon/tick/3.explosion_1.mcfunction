#> asset:mob/0077.golden_watermelon/tick/3.explosion_1
#
#
#
# @within function asset:mob/0077.golden_watermelon/tick/2.tick

# 演出
    playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 1.6 1.7 0
    playsound entity.generic.explode master @a ~ ~ ~ 1.3 1 0
    particle dust 0.173 1 0.243 2 ~ ~1.6 ~ 0.8 0.8 0.8 0 30 normal @a
    particle explosion ~ ~1.6 ~ 1 1 1 0 10 normal @a

# 水属性ダメージ

    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # 補正functionを実行
        function lib:damage/modifier
    # ダメージ対象
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2.5] run function lib:damage/
    # リセット
        data remove storage lib: Argument

# 自身に二段目爆発のためのタグを付与
    tag @s add 25.ExploCharge