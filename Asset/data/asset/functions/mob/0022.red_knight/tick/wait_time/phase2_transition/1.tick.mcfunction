#> asset:mob/0022.red_knight/tick/wait_time/phase2_transition/1.tick
#
# 怯む
#
# @within function asset:mob/0022.red_knight/tick/2.tick

# Tickロックかかってるなら強制的に解除
    tag @s[tag=M.TickLock] remove M.TickLock


# 怯み動作
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/2.change_pose

# ちょっと下がってく
    execute if score @s M.Tick matches 0..5 rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/0022.red_knight/tick/move/tp_nofacing
    execute if score @s M.Tick matches 5..15 rotated ~ 0 positioned ^ ^ ^-0.05 run function asset:mob/0022.red_knight/tick/move/tp_nofacing
    execute if score @s M.Tick matches 15..20 rotated ~ 0 positioned ^ ^ ^-0.01 run function asset:mob/0022.red_knight/tick/move/tp_nofacing

# 構え直す
    execute if score @s M.Tick matches 40 run function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/3.phase_change

# リセット
    execute if score @s M.Tick matches 60 run function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/4.restart
