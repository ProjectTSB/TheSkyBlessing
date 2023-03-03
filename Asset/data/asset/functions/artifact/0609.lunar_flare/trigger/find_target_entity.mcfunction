#> asset:artifact/0609.lunar_flare/trigger/find_target_entity
#
# 視点先みるやつ
#
# @within function asset:artifact/0609.lunar_flare/trigger/3.main
# @within function asset:artifact/0609.lunar_flare/trigger/find_target_entity

# 地形にぶつかったとき
    execute unless entity @s[tag=GX.RecursiveEnd] unless block ^ ^ ^1 #lib:no_collision run function asset:artifact/0609.lunar_flare/trigger/summon_laser_pos

# 限界距離なら
    execute unless entity @s[tag=GX.RecursiveEnd] unless entity @s[distance=..20] run function asset:artifact/0609.lunar_flare/trigger/summon_laser_pos

# 敵にぶつかったとき
    execute unless entity @s[tag=GX.RecursiveEnd] positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=!Object,tag=!Uninterferable,tag=!Projectile,tag=!Npc,dx=0,dy=0,dz=0,limit=1] run function asset:artifact/0609.lunar_flare/trigger/summon_laser_pos

# 再帰
    execute unless entity @s[tag=GX.RecursiveEnd] positioned ^ ^ ^0.15 if entity @s[distance=..25] if block ~ ~ ~ #lib:no_collision run function asset:artifact/0609.lunar_flare/trigger/find_target_entity