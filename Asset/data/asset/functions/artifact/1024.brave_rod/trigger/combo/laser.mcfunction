#> asset:artifact/1024.brave_rod/trigger/combo/laser
#
# 再帰ビーム
#
# @within function
#   asset:artifact/1024.brave_rod/trigger/combo/beam1_shot
#   asset:artifact/1024.brave_rod/trigger/combo/beam2_shot
#   asset:artifact/1024.brave_rod/trigger/combo/laser

# パーティクル
    # 内側
        particle dust 0.4 0.8 1 0.8 ^ ^ ^ 0 0 0 1 1 force @a[distance=..30]
        particle dust 0.4 0.8 1 0.8 ^ ^ ^0.5 0 0 0 1 1 force @a[distance=..30]
        particle dust 0.4 0.8 1 0.8 ^ ^ ^-0.5 0 0 0 1 1 force @a[distance=..30]
    # 外側
        particle dust 0.1 0.7 1 0.6 ^ ^ ^ 0.07 0.07 0.07 1 1 force @a[distance=..30]
        particle dust 0.1 0.7 1 0.6 ^ ^ ^0.5 0.07 0.07 0.07 1 1 force @a[distance=..30]
        particle dust 0.1 0.7 1 0.6 ^ ^ ^-0.5 0.07 0.07 0.07 1 1 force @a[distance=..30]

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function asset:artifact/1024.brave_rod/trigger/combo/laser_damage

# 再帰で前に飛ばす。ヒットしてたら移動停止
    execute if entity @s[tag=!SG.Hit,distance=..18] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^1 run function asset:artifact/1024.brave_rod/trigger/combo/laser
    tag @s[tag=SG.Hit] remove SG.Hit