#> asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/6.bullethell_tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/1.tick

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s RW.Tick

# 3tickごとに放つ
    scoreboard players operation $ShotInterval Temporary %= $3 Const
    execute if score $ShotInterval Temporary matches 0 at @r positioned ~ ~1 ~ run function asset:mob/1004.tultaria/tick/skill/10.deadly_attack_phase2/7.bullethell_summon
