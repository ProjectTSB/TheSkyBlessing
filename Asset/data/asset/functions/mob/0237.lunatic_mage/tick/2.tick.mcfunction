#> asset:mob/0237.lunatic_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0237.lunatic_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust light_gray_concrete ~ ~1 ~ 0.1 0.1 0.1 0 1

# 技決定
    execute if entity @s[scores={6L.Tick=0}] run function asset:mob/0237.lunatic_mage/tick/3.select_skill

# 技
    execute if entity @s[scores={6L.Tick=0..}] run function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# スコア
    scoreboard players add @s 6L.Tick 1

# Yのrotationを0で固定
    data modify entity @s Rotation[1] set value 0f