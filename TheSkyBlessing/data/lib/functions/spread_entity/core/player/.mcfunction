#> lib:spread_entity/core/player/
#
#
#
# @within function lib:spread_entity/

#> for moving player
# @private
#declare tag SubstituteMarker

# Pos取得
    function api:data_get/pos
# 身代わりのmarkerを召喚する
    summon marker ~ ~ ~ {Tags:["SubstituteMarker"]}
# ./as_substitute_markerで対象プレイヤーを特定できるようにtag付与
    tag @s add TargetPlayer
# 飛んだ先が読み込まれてなくても大丈夫なようにSubstituteMarkerをCommandSourceStackレベルで持つ
    execute as @e[type=marker,tag=SubstituteMarker,distance=..0.001,limit=1] run function lib:spread_entity/core/player/as_substitute_marker
# リセット
    tag @s remove TargetPlayer