#> asset:mob/0304.crystal_bullet/tick/wall_hit
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/move


# 反射
    function asset:mob/0304.crystal_bullet/tick/reflection
# 敵がいる場合そっちに飛ぶ
    execute if entity @e[type=#lib:living,tag=Enemy,distance=..30] run tp @s ^ ^ ^ facing entity @e[type=#lib:living,tag=Enemy,distance=..30,sort=nearest,limit=1] eyes
    execute if entity @e[type=#lib:living,tag=Enemy,distance=..30] at @s unless block ^ ^ ^0.01 #lib:no_collision run function asset:mob/0304.crystal_bullet/tick/reflection

# 演出
    playsound minecraft:block.amethyst_block.step player @a
    playsound minecraft:block.amethyst_block.break player @a
     particle block amethyst_block ~ ~ ~ 0 0 0 5 0
# 反射すると寿命が減る
    #scoreboard players add @s 8G.LifeTime 5
