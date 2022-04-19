#> asset:mob/0090.decapitation/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0090.decapitation/death/1.trigger

# 骨をばらまく
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.0,0.5,-0.4],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.4],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.4,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[-0.4,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}

