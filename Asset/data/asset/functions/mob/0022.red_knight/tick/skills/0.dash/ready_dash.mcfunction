#> asset:mob/0022.red_knight/tick/skills/0.dash/ready_dash
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/0.dash/1.tick

# 向き固定解除
    tag @s remove M.FacingLock

# 浮遊
    data modify entity @s NoAI set value 1b