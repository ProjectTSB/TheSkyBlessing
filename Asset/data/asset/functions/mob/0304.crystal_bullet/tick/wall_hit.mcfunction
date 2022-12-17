#> asset:mob/0304.crystal_bullet/tick/wall_hit
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/move


# 反射する（割と甘い反射）
    execute unless entity @e[type=#lib:living,tag=Enemy,distance=..30] unless blocks ~-0.5 ~ ~ ~0.5 ~ ~ 0 0 0 all positioned ^ ^ ^1 positioned ~2000 ~ ~ facing entity @s feet positioned ^ ^ ^4000 positioned ~2000 ~ ~ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

    execute unless entity @e[type=#lib:living,tag=Enemy,distance=..30] at @s unless blocks ~ ~-0.5 ~ ~ ~0.5 ~ 0 0 0 all positioned ^ ^ ^1 positioned ~ ~2000 ~ facing entity @s feet positioned ^ ^ ^4000 positioned ~ ~2000 ~ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

    execute unless entity @e[type=#lib:living,tag=Enemy,distance=..30] at @s unless blocks ~ ~ ~-0.5 ~ ~ ~0.5 0 0 0 all positioned ^ ^ ^1 positioned ~ ~ ~2000 facing entity @s feet positioned ^ ^ ^4000 positioned ~ ~ ~2000 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 敵がいる場合そっちに飛ぶ
    execute if entity @e[type=#lib:living,tag=Enemy,distance=..30] run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] eyes

# 反射すると寿命が減る
    scoreboard players add @s 8G.LifeTime 5