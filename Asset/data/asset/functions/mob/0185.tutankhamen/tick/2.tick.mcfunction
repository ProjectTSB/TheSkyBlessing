#> asset:mob/0185.tutankhamen/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0185.tutankhamen/tick/1.trigger

# スコア
    scoreboard players add @s 55.Tick 1

# 技選択
    execute if entity @s[scores={55.Tick=0}] run function asset:mob/0185.tutankhamen/tick/03.select_attack

# 技分岐
    execute if entity @s[scores={55.Tick=0..}] run function asset:mob/0185.tutankhamen/tick/04.attack_branch