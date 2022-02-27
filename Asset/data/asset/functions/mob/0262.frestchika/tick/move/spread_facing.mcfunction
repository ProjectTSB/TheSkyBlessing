#> asset:mob/0262.frestchika/tick/move/spread_facing
#
# プレイヤーを見る（拡散つき）
#
# @within function asset:mob/0262.frestchika/tick/2.tick

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","7A.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d],[10d,10d]]
    execute as @e[type=marker,tag=7A.This,distance=..100] at @p run function lib:spread_entity/

# マーカーを見る
    execute facing entity @e[type=marker,tag=7A.This,distance=..100,sort=nearest,limit=1] feet run function asset:mob/0262.frestchika/tick/move/tereport
# キル
    kill @e[type=marker,tag=7A.This,distance=..100]