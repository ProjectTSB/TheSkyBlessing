#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon_y
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick
#   asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick_enrage

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] run function lib:spread_entity/
# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1017
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~12 ~ run function api:mob/summon

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]
