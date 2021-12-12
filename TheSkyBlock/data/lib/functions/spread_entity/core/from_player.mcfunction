#> lib:spread_entity/core/from_player
#
#
#
# @within function lib:spread_entity/

#> for moving player
# @private
#declare tag SubstituteMarker

# 身代わりのMarkerを召喚
    summon marker ~ ~ ~ {Tags:["SubstituteMarker"]}
# 身代わりを飛ばす
    execute as @e[type=marker,tag=SubstituteMarker,distance=..0.001,limit=1] run function lib:spread_entity/core/teleport
# 実行者を身代わりへ飛ばす
    execute positioned as @e[type=marker,tag=SubstituteMarker,limit=1] run tp @s ~ ~ ~
# さよなら
    kill @e[type=marker,tag=SubstituteMarker,limit=1]