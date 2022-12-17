#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/active
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main


# マーカーにソード設置
    function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/summon_sword

# マーカーを消す
    kill @e[type=marker,tag=RW.TargetMarker,distance=..50]