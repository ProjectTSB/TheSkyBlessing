#> asset:mob/0237.lunatic_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0237.lunatic_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust white_concrete ~ ~1 ~ 0.1 0 0.1 0 1

# スコア
    scoreboard players add @s 6L.Tick 1

# 技決定
    execute if entity @s[scores={6L.Tick=0}] run function asset:mob/0237.lunatic_mage/tick/03.select_skill

# 技
    execute if entity @s[scores={6L.Tick=0..}] run function asset:mob/0237.lunatic_mage/tick/04.skill_branch