#> asset:mob/0217.medousa_eye/tick/08.stone_time
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/07.schedule_loop

# 演出
    particle block stone ~ ~1.2 ~ 0.1 0.4 0.1 0 4 normal @a

# 石化時間スコア減少
    scoreboard players remove @s 61.StoneTime 1

# デバフ
    execute if score @s 61.StoneTime matches 20.. run effect give @s slowness 1 4 true
    execute if score @s 61.StoneTime matches 20.. run effect give @s jump_boost 1 128 true

# 石化解除
    execute if score @s 61.StoneTime matches ..0 run function asset:mob/0217.medousa_eye/tick/09.release_stone