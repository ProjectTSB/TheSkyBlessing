#> asset:mob/1004.tultaria/hurt/health_under_50
#
# 50%切ったときの処理
#
# @within function asset:mob/1004.tultaria/hurt/3.check_health

# Tickを0に
    scoreboard players set @s RW.Tick 0

# タグ付与
    tag @s add RW.HPless50per
    tag @s add RW.SkillDeadly2