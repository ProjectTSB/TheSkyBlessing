#> asset:mob/1004.tultaria/tick/wait_time/phase3_transition/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# 怯み動作
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/2.damage_pose

# ちょっと下がってく
    execute if score @s RW.Tick matches 0..5 rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if score @s RW.Tick matches 5..15 rotated ~ 0 positioned ^ ^ ^-0.05 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if score @s RW.Tick matches 15..20 rotated ~ 0 positioned ^ ^ ^-0.01 run function asset:mob/1004.tultaria/tick/move/tereport

# 翼構え
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/3.windup

# 翼構え
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/wait_time/phase3_transition/4.wing_open

# 発動準備
    execute if score @s RW.Tick matches 70.. run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick