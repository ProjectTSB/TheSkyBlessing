#> asset:sacred_treasure/0320.divine_thunder_sword/3.1.particle
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0320.divine_thunder_sword/3.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

#再起の暴力
    execute rotated ~0 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~40 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~80 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~120 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~160 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~200 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~240 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~280 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~320 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary
    execute rotated ~360 ~0 run function asset:sacred_treasure/0320.divine_thunder_sword/3.2.particle_line
    scoreboard players reset $Line Temporary