#> asset:mob/0237.lunatic_mage/skill/magic2/2.spread
#
# 魔法の召喚位置を拡散する
#
# @within function asset:mob/0237.lunatic_mage/skill/magic2/1

#> Private
# @private
    #declare tag SpreadMarker

# マーカーを召喚して拡散する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..60,limit=1] run function lib:spread_entity/

# 拡散したマーカーの位置で召喚する
    data modify storage api: Argument.ID set value 240
    execute at @e[type=marker,tag=SpreadMarker,distance=..100,sort=nearest,limit=1] run function api:mob/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..100]