#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon_x
#
# めったに見ないような弾幕攻撃が北と東から飛んでくる
#
# @within function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0d,3d],[8d,8d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] run function lib:spread_entity/

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1017
    execute if score $Random Temporary matches 0 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~12 ~ ~ run function api:mob/summon
    execute if score $Random Temporary matches 1 at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~-12 ~ ~ run function api:mob/summon

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]
