#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s RW.Tick

# 6tickごとに水の檻を表示
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 rotated 0 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/6.summon_shot

