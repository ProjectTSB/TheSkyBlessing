#> asset:mob/1004.tultaria/tick/skill/phase3/2.summon_star/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/phase3/2.summon_star/2.windup

# 振り抜く
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/phase3/2.summon_star/3.activate

# 召喚
    execute if score @s RW.Tick matches 15..20 run function asset:mob/1004.tultaria/tick/skill/phase3/2.summon_star/4.summon

# 小技出しましたのタグを付与
    execute if score @s RW.Tick matches 40 run tag @s add RW.MiniSkillUsed

# リセット
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/reset