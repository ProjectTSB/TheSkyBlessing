#> asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/1.tick
#
# 赤い剣を何本か立てる
#
# @within asset:mob/1004.tultaria/tick/4.skill_active

# 5本投げる
    execute if score @s RW.Tick matches 1 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 2 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 3 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 4 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
    execute if score @s RW.Tick matches 5 run function asset:mob/1004.tultaria/tick/skill/phase2/1.place_red_sword/2.place
