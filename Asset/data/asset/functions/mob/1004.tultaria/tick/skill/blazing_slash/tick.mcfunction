#> asset:mob/1004.tultaria/tick/skill/blazing_slash/tick
#
# デケェ火の斬撃
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/windup

# ゆっくりと追ってくる
    execute if score @s RW.Tick matches 0..40 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/follow

# 剣を構える
    execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/slash_windup

# 振る
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/active
