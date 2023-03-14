#> asset:artifact/0320.divine_thunder_sword/trigger/3.2.particle_line
#
# 神器のメイン処理部
#
# @within function
#    asset:artifact/0320.divine_thunder_sword/trigger/3.main
#    asset:artifact/0320.divine_thunder_sword/trigger/3.1.particle
#    asset:artifact/0320.divine_thunder_sword/trigger/3.2.particle_line

# 演出
    execute positioned ^ ^ ^1 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^1.5 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^2.5 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^3.5 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^4 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^4.5 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    execute positioned ^ ^ ^5 run particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
# 線を書く
    scoreboard players add $Line Temporary 1
    execute if score $Line Temporary matches ..12 rotated ~30 ~ run function asset:artifact/0320.divine_thunder_sword/trigger/3.2.particle_line