#> asset:mob/1004.tultaria/tick/6.starfury_attack/3.summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/6.starfury_attack/1.starfury_attack

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[35d,35d],[2d,5d],[35d,35d]]
    execute as @e[type=marker,tag=RW.This,distance=..100] at @s positioned ~ ~15 ~ run function lib:spread_entity/

# モブを出す
    data modify storage api: Argument.ID set value 1010
    execute at @e[type=marker,tag=RW.This,distance=..100] run function api:mob/summon

# 演出
    execute at @a[distance=..100] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1

# キル
    kill @e[type=marker,tag=RW.This,distance=..100]