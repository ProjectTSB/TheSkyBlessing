#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine
#
# ランダム拡散で地雷を設置
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_stacked

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] run function lib:spread_entity/

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 316
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] run function api:mob/summon

# パーティクルも出しておこう
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/vfx

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]