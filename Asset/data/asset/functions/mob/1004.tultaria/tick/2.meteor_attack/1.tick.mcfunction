#> asset:mob/1004.tultaria/tick/2.meteor_attack/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/2.meteor_attack/2.windup

# 発動
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/2.meteor_attack/3.activate

# リセット
    execute if score @s RW.Tick matches 50.. run function asset:mob/1004.tultaria/tick/reset