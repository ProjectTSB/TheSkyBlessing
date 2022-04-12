#> asset:mob/0154.ruin/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0154.ruin/tick/1.trigger

# タグがついていない時、プレイヤーが周囲にいたら増え続ける
    execute if entity @a[distance=..10] unless entity @s[tag=4A.Madness] run scoreboard players add @s 4A.MadnessTime 1

# タグがついている時、問答無用で増え続ける
    execute if entity @s[tag=4A.Madness] run scoreboard players add @s 4A.MadnessTime 1

# 一定のスコアに達したら1度発動
    execute if score @s 4A.MadnessTime matches 170 run function asset:mob/0154.ruin/tick/3.ready

# その後発動し続けるやつ
    execute if score @s 4A.MadnessTime matches 170.. run function asset:mob/0154.ruin/tick/4.madness