#> asset:mob/0217.medousa_eye/tick/04.mineralization_beam
#
#
#
# @within function
#   asset:mob/0217.medousa_eye/tick/2.tick
#   asset:mob/0217.medousa_eye/tick/04.mineralization_beam

# 演出
    particle dust 0.102 0.353 0.102 1.5 ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 0.102 0.353 0.102 1.5 ^ ^ ^-0.5 0 0 0 0 1 normal @a

# 再帰
    execute if entity @s[distance=..20] unless entity @p[gamemode=!spectator,dx=0] positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0217.medousa_eye/passing_block run function asset:mob/0217.medousa_eye/tick/04.mineralization_beam

# 石化ビームヒット
    execute if entity @p[gamemode=!spectator,dx=0] run function asset:mob/0217.medousa_eye/tick/05.beam_hit