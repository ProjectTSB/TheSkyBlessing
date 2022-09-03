#> asset:mob/1014.deadlyshot/summon/3.init
#
# 独自init
#
# @within function asset:mob/1014.deadlyshot/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 自信を中心に拡散先を召喚
    data modify storage lib: Argument.Bounds set value [[10d,10d],[1d,0d],[10d,10d]]
    execute as @e[type=marker,tag=SpreadMarker] at @s run function lib:spread_entity/

# マーカーの方向く
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# Markerをキル
    kill @e[type=marker,tag=SpreadMarker]