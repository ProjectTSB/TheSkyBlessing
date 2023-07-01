#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/summon_mine
#
# ランダム拡散で地雷を設置
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] run function lib:spread_entity/

# マーカーを地面まで落とす
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @s run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/search_ground

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 316
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] run function api:mob/summon

# パーティクルも出しておこう
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 10

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]