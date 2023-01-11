#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/main
#
# 赤い剣を何本か立てる
#
# @within asset:mob/1004.tultaria/tick/wait_time/base_move/tick

# 以下の処理はソード設置カウントが0のときに実行
    # マーカー設置
        execute if score @s RW.SwordCount matches 0 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/place_marker
    # 剣を召喚
        execute if score @s RW.SwordCount matches 0 as @e[type=marker,tag=RW.TargetMarker,distance=..50] at @s run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/active

# ソード設置カウントを増やす
    scoreboard players add @s RW.SwordCount 1
