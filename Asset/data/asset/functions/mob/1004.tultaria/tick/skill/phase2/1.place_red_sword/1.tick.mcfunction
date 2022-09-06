#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick
#
# 赤い剣を何本か立てる
#
# @within asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# 5本投げる。1本はプレイヤー付近に落ちてくる
    execute if score @s RW.Tick matches 21 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 22 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 23 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 24 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/3.targeted_place