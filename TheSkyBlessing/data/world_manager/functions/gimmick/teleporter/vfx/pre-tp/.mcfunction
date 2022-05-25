#> world_manager:gimmick/teleporter/vfx/pre-tp/
#
#
#
# @within function world_manager:gimmick/teleporter/active

#> PosMarker
# @private
    #declare tag TPPosMarker
    #declare tag TPPosMarkerA
    #declare tag TPPosMarkerB

# 座標データがキャッシュされてなかったら取得する
    function api:data_get/pos
    execute unless score @s PosYCache matches -2147483648..2147483647 store result score @s PosYCache run data get storage api: Pos[1] 25
# 対象Y座標を呼び出し毎に~0.05ずつ上げる
    scoreboard players add @s PosYCache 1
# 座標と方向を設定するためのmarkerを召喚する
    summon marker ~ ~ ~ {Tags:["TPPosMarker","TPPosMarkerA"]}
    summon marker ~ ~ ~ {Tags:["TPPosMarker","TPPosMarkerB"]}
# PosとRotationを設定する
    execute as @e[type=marker,tag=TPPosMarker,distance=..0.01,limit=2] store result entity @s Pos[1] double 0.04 run scoreboard players get @p[tag=this,distance=..1] PosYCache
    execute store result entity @e[type=marker,tag=TPPosMarkerA,distance=..3,limit=1] Rotation[0] float 3.8 run scoreboard players get @s Teleporter
    execute store result entity @e[type=marker,tag=TPPosMarkerB,distance=..3,limit=1] Rotation[0] float -3.8 run scoreboard players get @s Teleporter
# particle表示
    execute at @e[type=marker,tag=TPPosMarker,distance=..3,limit=2] run function world_manager:gimmick/teleporter/vfx/pre-tp/circle
# リセット
    kill @e[type=marker,tag=TPPosMarker,distance=..3,limit=2]