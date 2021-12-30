#> asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity
#
# 視点先みるやつ
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/2.check_condition
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity


# 視線先を見る
    execute positioned ~-1 ~-1 ~-1 as @e[type=#lib:living,type=!player,tag=!Object,tag=!Uninterferable,tag=!Projectile,tag=!Npc,dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 if entity @s[dx=0,dy=0,dz=0] run tag @s add GX.Target

# 再帰
    execute unless entity @e[type=#lib:living,type=!player,tag=GX.Target,distance=..2] positioned ^ ^ ^0.15 if entity @s[distance=..15] if block ~ ~ ~ #lib:no_collision run function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity