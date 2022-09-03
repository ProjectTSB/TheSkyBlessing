#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/2.windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 中心に移動
    function asset:mob/1004.tultaria/tick/move/teleport/move_to_center

# 無敵になる
    data modify entity @s Invulnerable set value 1b

# 移動終了までTickLock
    tag @s add RW.TickLock

# この動作をループしないようにスコア1だけ増やす
    scoreboard players add @s RW.Tick 1