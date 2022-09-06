#> asset:mob/1004.tultaria/tick/wait_time/phase2_transition/1.tick
#
# フェイズ2移行する時の動作
#
# @within function asset:mob/1004.tultaria/tick/2.tick

# 怯み動作
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/wait_time/phase2_transition/2.damage_pose

# ちょっと下がってく
    execute if score @s RW.Tick matches 0..5 positioned ^ ^ ^-0.1 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if score @s RW.Tick matches 5..15 positioned ^ ^ ^-0.05 run function asset:mob/1004.tultaria/tick/move/tereport
    execute if score @s RW.Tick matches 15..20 positioned ^ ^ ^-0.01 run function asset:mob/1004.tultaria/tick/move/tereport

# 発動準備
    execute if score @s RW.Tick matches 30.. run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 発動
    #execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/4.fall_meteor

# リセット
    #execute if score @s RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/reset