#> lib:spread_entity/core/non-player
#
#
#
# @within function lib:spread_entity/

#> for moving player
# @private
#declare tag SubstituteMarker

# 実行座標を取得する
    summon marker ~ ~ ~ {Tags:["SubstituteMarker"]}
    data modify storage api: Pos set from entity @e[type=marker,tag=SubstituteMarker,distance=..0.001,limit=1] Pos
    kill @e[type=marker,tag=SubstituteMarker,distance=..0.001,limit=1]
# 実行者をTP
    function lib:spread_entity/core/teleport