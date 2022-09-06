#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
#
# 剣を設置
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @r run function lib:spread_entity/

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1016
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~5 ~ run function api:mob/summon

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]
