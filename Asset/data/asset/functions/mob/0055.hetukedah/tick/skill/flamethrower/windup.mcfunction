#> asset:mob/0055.hetukedah/tick/skill/flamethrower/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/tick


# 演出
    particle minecraft:dust 1 0.6 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 50 force @a[distance=..30]
    particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 5 force @a[distance=..30]
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# 右か左をランダムで選択
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
        scoreboard players operation $Random Temporary %= $2 Const
    # 結果によって方向を選ぶ
        execute if score $Random Temporary matches 0 run tag @s add 1J.Turn.Left
        execute if score $Random Temporary matches 1 run tag @s add 1J.Turn.Right
    # リセット
        scoreboard players reset $Random Temporary

# NoAIにする
    data merge entity @s {NoAI:1b}