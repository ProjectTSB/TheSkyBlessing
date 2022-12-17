#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main
#
# 赤い剣を何本か立てる
#
# @within asset:mob/1004.tultaria/tick/wait_time/base_move/tick

# マーカー設置
    function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/place_marker

# 剣を召喚
    execute as @e[type=marker,tag=RW.TargetMarker,distance=..50] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/active