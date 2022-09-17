#> asset:mob/0258.enemy_teleporter/tick/teleport
#
#
#
# @within function asset:mob/0258.enemy_teleporter/tick/branch

# なるべく離れてるモブを引き寄せ
    execute if entity @e[type=#lib:hostile,tag=Enemy,tag=!Uninterferable,distance=15..25,limit=1] as @e[type=#lib:hostile,tag=Enemy,tag=!Uninterferable,distance=15..25,sort=random,limit=3] run tp ~ ~ ~

# もしも周囲に敵がいないならどこの誰でもいいから引き寄せ
    execute unless entity @e[type=#lib:hostile,tag=Enemy,tag=!Uninterferable,distance=15..25,limit=1] as @e[type=#lib:hostile,tag=!Uninterferable,distance=..25,sort=nearest,limit=3] run tp ~ ~ ~

# 演出
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a ~ ~ ~ 1 1.4
    particle dust 0.427 0 0.514 1 ~ ~3 ~ 0.7 3 0.7 0 150

# 自害
    kill @s