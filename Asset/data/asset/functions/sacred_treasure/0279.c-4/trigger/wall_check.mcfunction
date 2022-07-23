#> asset:sacred_treasure/0279.c-4/trigger/wall_check
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/4.place

# 着弾したら前方のブロックの中心で6方向にマーカー出す

    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~1 {Tags:["7R.WallCheker","7R.IsNorth"]}
    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~1 ~ ~ {Tags:["7R.WallCheker","7R.IsWest"]}

    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~-1 {Tags:["7R.WallCheker","7R.IsSouth"]}
    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~-1 ~ ~ {Tags:["7R.WallCheker","7R.IsEast"]}

    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~1 ~ {Tags:["7R.WallCheker","7R.IsFloor"]}
    execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~-1 ~ {Tags:["7R.WallCheker","7R.IsCeiling"]}
# 一番近いマーカーだけ残して後は殺す。そうすれば現在位置がわかる
    kill @e[type=marker,tag=7R.WallCheker,distance=..3,sort=furthest,limit=5]

# C4召喚
    execute at @e[type=marker,tag=7R.WallCheker,distance=..3,sort=nearest,limit=1] positioned ~ ~-0.5 ~ run function asset:sacred_treasure/0279.c-4/trigger/c4_summon

# もうマーカーはいらないので殺す
    kill @e[type=marker,tag=7R.WallCheker,distance=..3]