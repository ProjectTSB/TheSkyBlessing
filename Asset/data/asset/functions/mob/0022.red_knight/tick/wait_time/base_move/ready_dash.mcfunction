#> asset:mob/0022.red_knight/tick/wait_time/base_move/ready_dash
#
#
#
# @within function
#   asset:mob/0022.red_knight/tick/wait_time/base_move/tick
#   asset:mob/0022.red_knight/tick/wait_time/opening/battle_start

# 向き固定解除
    tag @s remove M.FacingLock

# タグ付与
    tag @s add M.InAction
    tag @s add M.SkillDash

# 浮遊
    data modify entity @s NoAI set value 1b

# スコア戻す
    scoreboard players set @s M.Tick 0