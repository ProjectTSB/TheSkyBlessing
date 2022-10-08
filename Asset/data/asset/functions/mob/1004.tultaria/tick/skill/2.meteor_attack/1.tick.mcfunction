#> asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/2.windup

# 発動
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/3.activate

# 発動
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor

# リセット
    execute if score @s[scores={RW.Phase=..2}] RW.Tick matches 120.. run function asset:mob/1004.tultaria/tick/reset
    execute if score @s[scores={RW.Phase=3..}] RW.Tick matches 140.. run function asset:mob/1004.tultaria/tick/reset