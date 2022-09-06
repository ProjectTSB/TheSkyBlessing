#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/3.targeted_place
#
# ランダムなプレイヤー座標のやけに近くに出現させる用
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    execute at @r run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @r run function lib:spread_entity/

# マーカーに対して召喚
    data modify storage api: Argument.ID set value 1016
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~5 ~ run function api:mob/summon

# パーティクルも出しておこう
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/4.particle

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]
