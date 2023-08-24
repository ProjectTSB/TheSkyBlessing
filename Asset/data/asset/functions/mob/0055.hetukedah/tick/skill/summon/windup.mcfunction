#> asset:mob/0055.hetukedah/tick/skill/summon/windup
#
# 予備動作
#
# @within function asset:mob/0055.hetukedah/tick/skill/summon/tick

# こっち見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 演出
    particle minecraft:dust 0.5 0 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 100 force @a[distance=..30]
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.lava.ambient hostile @a ~ ~ ~ 2 2

# NoAIにする
    data merge entity @s {NoAI:1b}

# 動作カウントリセット
    scoreboard players reset @s 1J.MoveCount