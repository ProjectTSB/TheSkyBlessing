#> asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
#
# 神器のメイン処理部
#
# @within function
#    asset:sacred_treasure/0320.divine_thunder_sword/3.main
#    asset:sacred_treasure/0320.divine_thunder_sword/3.1.particle
#    asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line

# 演出
    execute positioned ^ ^ ^1 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
# 線を書く
    scoreboard players add $Line Temporary 1
    execute if score $Line Temporary matches ..10 positioned ^ ^ ^0.25 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
