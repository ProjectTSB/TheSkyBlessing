#> asset:mob/0084.falcios_priest/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0084.falcios_priest/tick/1.trigger

# スコア
    scoreboard players add @s 2C.Tick 1

# 技選択
    execute if entity @s[scores={2C.Tick=60..}] run function asset:mob/0084.falcios_priest/tick/3.select_skill

# 回復
    execute if entity @s[scores={2C.Skill=0}] run function asset:mob/0084.falcios_priest/tick/4.heal

# 弾を発射
    execute if entity @s[scores={2C.Skill=1}] run function asset:mob/0084.falcios_priest/tick/5.shoot

# リセット
    execute if entity @s[scores={2C.Tick=60..}] run scoreboard players reset @s 2C.Skill
    execute if entity @s[scores={2C.Tick=60..}] run scoreboard players reset @s 2C.Tick