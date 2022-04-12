#> asset:mob/0092.red_rose/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0092.red_rose/tick/1.trigger


# 演出
    particle flame ~ ~1 ~ 0.4 0.4 0.4 0 1 normal
    particle lava ~ ~1 ~ 0 0 0 0 1 normal

# スコアを増やす
    scoreboard players add @s 2K.Time 1

# 一定のスコアになったら実行（スキル発動の予兆）
    execute if score @s 2K.Time matches 120.. run particle dragon_breath ~ ~0.5 ~ 2 0 2 0 10
    execute if score @s 2K.Time matches 120 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 1 2
    execute if score @s 2K.Time matches 120 run data modify entity @s NoAI set value 1
    execute if score @s 2K.Time matches 120 run tp @s ~ ~ ~ facing entity @p

# スキル発動
    execute if score @s 2K.Time matches 160 positioned ^ ^ ^1 run function asset:mob/0092.red_rose/tick/2.1.skill
    execute if score @s 2K.Time matches 170 positioned ^ ^ ^3 run function asset:mob/0092.red_rose/tick/2.1.skill
    execute if score @s 2K.Time matches 180 positioned ^ ^ ^5 run function asset:mob/0092.red_rose/tick/2.1.skill

# スキルリセット
    execute if score @s 2K.Time matches 180 run function asset:mob/0092.red_rose/tick/2.2.reset