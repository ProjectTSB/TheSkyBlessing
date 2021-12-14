#> asset:mob/1004.tultaria/tick/2.meteor_attack/1.meteor_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/2.meteor_attack/2.first_tick

# 降らせる
    execute if score @s RW.Tick matches 10 at @e[tag=RW.MeteorMaker,distance=..100] positioned ~ ~5 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/5.vfx
    execute if score @s RW.Tick matches 12 at @e[tag=RW.MeteorMaker,distance=..100] positioned ~ ~4 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/5.vfx
    execute if score @s RW.Tick matches 14 at @e[tag=RW.MeteorMaker,distance=..100] positioned ~ ~3 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/5.vfx
    execute if score @s RW.Tick matches 16 at @e[tag=RW.MeteorMaker,distance=..100] positioned ~ ~2 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/5.vfx
    execute if score @s RW.Tick matches 18 at @e[tag=RW.MeteorMaker,distance=..100] positioned ~ ~1 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/5.vfx

# 爆発
    execute if score @s RW.Tick matches 20 at @e[tag=RW.MeteorMaker,tag=!RW.BigMeteorMaker,distance=..100] run function asset:mob/1004.tultaria/tick/2.meteor_attack/6.explode
    execute if score @s RW.Tick matches 20 at @e[tag=RW.MeteorMaker,tag=RW.BigMeteorMaker,distance=..100] run function asset:mob/1004.tultaria/tick/2.meteor_attack/7.explode2

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/reset