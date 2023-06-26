#> asset:mob/0331.blazing_inferno/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0331.blazing_inferno/death/1.trigger

# 自分のマーカーを削除
    kill @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1]
    