#> asset:mob/1004.tultaria/tick/6.starfury_attack/1.starfury_attack
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/6.starfury_attack/2.first_tick

# 召喚する
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/6.starfury_attack/3.summon
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/6.starfury_attack/3.summon

# 演出
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/6.starfury_attack/4.vfx

# タグ付与連打
    execute if score @s RW.Tick matches 50..70 as @e[type=area_effect_cloud,tag=S2.Wait,sort=random,limit=2] at @s run function asset:mob/1004.tultaria/tick/6.starfury_attack/5.tag_remove

# リセット
    execute if score @s RW.Tick matches 90 run function asset:mob/1004.tultaria/tick/reset