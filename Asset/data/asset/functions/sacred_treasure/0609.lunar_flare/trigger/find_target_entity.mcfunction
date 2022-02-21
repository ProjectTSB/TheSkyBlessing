#> asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity
#
# 視点先みるやつ
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/3.main
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity

# パーティクル
    particle composter ~ ~ ~ 0 0 0 0 1 force @s[distance=19.7..30]

# 地形にぶつかったとき
    execute unless entity @s[tag=GX.RecursiveEnd] unless block ^ ^ ^1 #lib:no_collision run function asset:sacred_treasure/0609.lunar_flare/trigger/summon_laser_pos

# 限界距離なら
    execute unless entity @s[tag=GX.RecursiveEnd] if entity @s[distance=19.7..30] run function asset:sacred_treasure/0609.lunar_flare/trigger/summon_laser_pos

# 敵にぶつかったとき
    execute unless entity @s[tag=GX.RecursiveEnd] positioned ~-1 ~-1 ~-1 at @e[type=#lib:living,type=!player,tag=!Object,tag=!Uninterferable,tag=!Projectile,tag=!Npc,dx=0,dy=0,dz=0] run function asset:sacred_treasure/0609.lunar_flare/trigger/summon_laser_pos

# 再帰
    execute unless entity @s[tag=GX.RecursiveEnd] unless entity @e[type=#lib:living,type=!player,tag=GX.Target,distance=..2] positioned ^ ^ ^0.15 if entity @s[distance=..25] if block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity