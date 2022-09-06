#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick
#
# 赤い剣を何本か立てる
#
# @within asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# 5本投げる。1本はプレイヤー付近に落ちてくる
    execute if score @s RW.Tick matches 11 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 12 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 13 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 14 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/3.targeted_place