#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/5.shoot_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s RW.Tick

# 3tickごとに放つ
    scoreboard players operation $ShotInterval Temporary %= $3 Const
    execute if score $ShotInterval Temporary matches 0 run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/6.summon_shot