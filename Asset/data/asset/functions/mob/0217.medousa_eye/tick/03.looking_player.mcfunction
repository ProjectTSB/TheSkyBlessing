#> asset:mob/0217.medousa_eye/tick/03.looking_player
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/2.tick

# プレイヤーを見る
    tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=!61.Stone,distance=..10,sort=nearest,limit=1] feet

# 見ているか探索し、見ているなら注視スコア増加
    execute if entity @a[gamemode=!spectator,tag=!61.Stone,distance=..10] positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/04.looking_recursive

