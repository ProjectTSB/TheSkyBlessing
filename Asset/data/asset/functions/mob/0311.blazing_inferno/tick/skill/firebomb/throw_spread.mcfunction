#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/throw_spread
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

#> 方向を決める
# @private
#declare tag FacingMarker

# 拡散させるEntityを召喚する
    summon marker ^ ^ ^10 {Tags:["FacingMarker"]}

# 召喚
    data modify storage api: Argument.ID set value 314
    function api:mob/summon

# さっき召喚したアーマースタンドを前進拡散に向ける
    execute as @e[type=armor_stand,distance=..0.01,limit=1] facing entity @e[type=marker,tag=FacingMarker,limit=1] eyes rotated ~ 0 run tp @s ~ ~0.5 ~ ~ ~10

# 拡散マーカー消す
    kill @e[type=marker,tag=FacingMarker,distance=..30]