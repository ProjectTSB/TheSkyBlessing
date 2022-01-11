#> asset:mob/0174.burning_blaze/action/rush
#
#
#
# @within function asset:mob/0174.burning_blaze/tick/2.tick

# NoAI化
    data modify entity @s NoAI set value true
# スコア設定
    scoreboard players set @s 4U.ActionTime 30
    scoreboard players set @s 4U.NowAction 1
# 向き設定
    execute facing entity @p feet run tp @s ~ ~1 ~ ~ ~
# 透明化
    effect give @s invisibility 3 1 true
# 音
    playsound entity.generic.extinguish_fire hostile @a ~ ~ ~ 2 0 0.5
    playsound entity.generic.extinguish_fire hostile @a ~ ~ ~ 2 0 0.5
    playsound entity.generic.extinguish_fire hostile @a ~ ~ ~ 2 0 0.5