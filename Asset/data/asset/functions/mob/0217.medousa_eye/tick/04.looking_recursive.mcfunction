#> asset:mob/0217.medousa_eye/tick/04.looking_recursive
#
# 再帰処理を行い、プレイヤーが視界に入っているか調べる
#
# @within function
#   asset:mob/0217.medousa_eye/tick/03.looking_player
#   asset:mob/0217.medousa_eye/tick/04.looking_recursive

# 演出
    particle dust 0.102 0.353 0.102 0.5 ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 0.102 0.353 0.102 0.5 ^ ^ ^-0.5 0 0 0 0 1 normal @a
    playsound block.amethyst_block.chime master @p[gamemode=!spectator,dx=0] ~ ~ ~ 1.4 1.5 0

# 再帰
    execute if entity @s[distance=..10] unless entity @p[gamemode=!spectator,dx=0] positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0217.medousa_eye/passing_block run function asset:mob/0217.medousa_eye/tick/04.looking_recursive

# プレイヤーいたら注視スコア増加
    execute if entity @p[gamemode=!spectator,dx=0] run scoreboard players add @s 61.LookingTime 1

