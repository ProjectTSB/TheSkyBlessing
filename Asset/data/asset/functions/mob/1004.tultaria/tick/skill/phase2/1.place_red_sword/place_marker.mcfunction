#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/place_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main

# 5つのマーカーを設置
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit","Object","Uninterferable"]}
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit","Object","Uninterferable"]}
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit","Object","Uninterferable"]}
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit","Object","Uninterferable"]}
    summon marker ~ ~ ~ {Tags:["RW.TargetMarker","RW.TargetMarkerInit","Object","Uninterferable"]}

# 拡散させる
    execute as @e[type=marker,tag=RW.TargetMarkerInit,distance=..0.1] at @r run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/spread

# マーカーを地面に下ろす
    execute as @e[type=marker,tag=RW.TargetMarkerInit,distance=..100] at @s run function asset:mob/1004.tultaria/tick/skill/common/search_ground/

# タグを外す
    tag @e[type=marker,tag=RW.TargetMarkerInit,distance=..100] remove RW.TargetMarkerInit