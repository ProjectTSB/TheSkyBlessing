#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_beam_purple
#
# 敵に向かって直線に伸びるパーティクル
# @input
#   as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1]
#   positioned as @p[tag=this]
#   facing @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1]
#
# @within function
#   asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.1.particle_attack

# 向いてる方向の前方に攻撃対象がいた場合パーティクルを出す
    execute positioned ^ ^ ^1 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^2 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^3 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^4 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^5 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^6 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^7 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^8 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^9 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^10 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^11 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^12 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^13 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^14 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^15 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^16 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^17 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^18 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^19 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
    execute positioned ^ ^ ^20 positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 run particle dust 1 0.6 1 2 ^ ^ ^ 0 0 0 0 1
