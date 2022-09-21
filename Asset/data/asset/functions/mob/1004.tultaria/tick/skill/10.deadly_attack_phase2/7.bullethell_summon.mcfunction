#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon
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
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @r run function lib:spread_entity/

# マーカーに対して召喚
    #data modify storage api: Argument.ID set value 1016
    #execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~5 ~ run function api:mob/summon
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~12 ~ ~ run particle end_rod ~ ~ ~ 0 1 0 0.015 0 force @a[distance=..20]

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]