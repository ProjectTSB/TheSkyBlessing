#> asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity
#
# 視点先みるやつ
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/3.main
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity

# パーティクル
    particle composter ~ ~ ~ 0 0 0 0 1 force @s[distance=14.5..15]

# 敵にぶつかったとき
    #execute positioned ~-1 ~-1 ~-1 as @e[type=#lib:living,type=!player,tag=!Object,tag=!Uninterferable,tag=!Projectile,tag=!Npc,dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 if entity @s[dx=0,dy=0,dz=0] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["GX.LaserPos","GX.LaserPosFirst","Projectile"]}

# 地形にぶつかったとき
    execute unless block ^ ^ ^1 #lib:no_collision run function asset:sacred_treasure/0609.lunar_flare/trigger/summon_laser_pos

# 再帰
    execute unless entity @e[type=#lib:living,type=!player,tag=GX.Target,distance=..2] positioned ^ ^ ^0.15 if entity @s[distance=..15] if block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity