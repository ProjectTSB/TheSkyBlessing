#> asset:mob/1004.tultaria/tick/move/spread_facing
#
# プレイヤーを見る（拡散つき）
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[0d,10d],[0],[0d,10d]]
    execute as @e[type=marker,tag=RW.This,distance=..100] at @p[distance=..100] run function lib:spread_entity/

# マーカーを見る
    execute facing entity @e[type=marker,tag=RW.This,distance=..100,sort=nearest,limit=1] feet run function asset:mob/1004.tultaria/tick/move/tereport
# キル
    kill @e[type=marker,tag=RW.This,distance=..100]