#> asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/4.call_thunder
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick

# 雷落とす用のマーカーを召喚
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit"]}
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0d,0d],[12d,12d]]
    execute as @e[type=marker,tag=RW.TargetMarkerInit,distance=..100,limit=1] at @r[distance=..100] run function lib:spread_entity/

# マーカーにパーティクル
    execute at @e[type=marker,tag=RW.TargetMarkerInit] run particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# すでに置いたのを拡散しないようにタグを奪う
    tag @e[type=marker,tag=RW.TargetMarkerInit,distance=..100,limit=1] remove RW.TargetMarkerInit