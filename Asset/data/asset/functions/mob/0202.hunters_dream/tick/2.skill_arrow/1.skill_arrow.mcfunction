#> asset:mob/0202.hunters_dream/tick/2.skill_arrow/1.skill_arrow
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/4.skill_active

# 一回後退
    execute if score @s 5M.Tick matches 0 run function asset:mob/0202.hunters_dream/tick/2.skill_arrow/2.backstep

# 召喚する
    execute if score @s 5M.Tick matches 4 run function asset:mob/0202.hunters_dream/tick/2.skill_arrow/3.arrow_summon
    execute if score @s 5M.Tick matches 6 run function asset:mob/0202.hunters_dream/tick/2.skill_arrow/3.arrow_summon
    execute if score @s 5M.Tick matches 8 run function asset:mob/0202.hunters_dream/tick/2.skill_arrow/3.arrow_summon

# リセット
    execute if score @s 5M.Tick matches 8 run function asset:mob/0202.hunters_dream/tick/reset