#> asset:sacred_treasure/0172.icicle/trigger/laser/1.laser
#
#
#
# @within function asset:sacred_treasure/0172.icicle/trigger/laser/schedule

# スコア加算
    scoreboard players add @s 4S.Time 1

# パーティクル
    execute if score @s 4S.Time matches 10.. run particle end_rod ~ ~15 ~ 0 -1 0 4 0


    execute if score @s 4S.Time matches 30.. positioned ~ ~5 ~ rotated 0 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle
    execute if score @s 4S.Time matches 40.. positioned ~ ~10 ~ rotated 0 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle2
    execute if score @s 4S.Time matches 50.. positioned ~ ~17 ~ rotated ~ 0 run function asset:sacred_treasure/0172.icicle/trigger/laser/particle3

    execute if score @s 4S.Time matches 60 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 63 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 67..75 positioned ~ ~17 ~ rotated ~ 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/2.laser_directing
    execute if score @s 4S.Time matches 75.. positioned ~ ~15 ~ rotated 0 90 run function asset:sacred_treasure/0172.icicle/trigger/laser/3.laser_circle








# 回転
    tp @s ~ ~ ~ ~3 ~