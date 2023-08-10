#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/spread_ball
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    execute anchored eyes positioned ^-0.4 ^-0.3 ^0.5 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# ステータス設定
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 3
# 拡散
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 313
    function api:mob/summon

# さっき召喚したアーマースタンドを前進拡散に向ける
    execute as @e[type=armor_stand,distance=..0.01,limit=1] facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~0.5 ~ ~ ~

# 前進拡散マーカー消す
    kill @e[type=marker,tag=SpreadMarker,distance=..30]