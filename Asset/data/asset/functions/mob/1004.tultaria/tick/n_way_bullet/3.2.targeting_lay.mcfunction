#> asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/n_way_bullet/1.tick
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.1.targeting

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 実行座標を中心として-x方向に1、+x方向に1、-y方向に0.2、+y方向に0.8、-z方向に1、+z方向に1の立方体内のランダムな位置にmarkerを移動
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0.2d,0.8d],[10d,10d]]
    execute as @e[type=marker,tag=SpreadMarker] at @r run function lib:spread_entity/

# 拡散
    #execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# ビーム
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run function asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker]