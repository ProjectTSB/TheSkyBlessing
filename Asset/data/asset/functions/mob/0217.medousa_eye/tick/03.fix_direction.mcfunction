#> asset:mob/0217.medousa_eye/tick/03.fix_direction
#
# ビームの向きを決定します
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# NoAI
    data modify entity @s NoAI set value 1b
# プレイヤーを見る
    execute positioned ^ ^ ^10 as @p[gamemode=!spectator,tag=!61.Stone,distance=..10] positioned ^ ^ ^-10 run tp @e[type=zombie,tag=this,distance=..0.1] ~ ~ ~ facing entity @s feet
