#> asset:mob/1004.tultaria/tick/5.ball_attack/3.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/5.ball_attack/1.ball_attack


# マーカー召喚
    summon marker ~ ~0.5 ~ {Tags:["Object","RW.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute as @e[type=marker,tag=RW.This,distance=..100] at @s run function lib:spread_entity/

# モブを出す
    data modify storage api: Argument.ID set value 1009
    execute at @e[type=marker,tag=RW.This,distance=..100] run function api:mob/summon

# 演出
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1.5 1.2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 3.5 0
    playsound item.trident.riptide_3 hostile @a ~ ~ ~ 2 1.5
    playsound item.trident.riptide_2 hostile @a ~ ~ ~ 2 1.5

# キル
    kill @e[type=marker,tag=RW.This,distance=..100]