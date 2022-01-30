#> asset:mob/1004.tultaria/tick/7.star_summon/4.summon_star
#
#
#
# @within function asset:mob/1004.tultaria/tick/7.star_summon/3.summon
#> private
# @private
    #declare score_holder $Random

# スキル選択
    execute if score $Random Temporary matches 0 run data modify storage api: Argument.ID set value 1005
    execute if score $Random Temporary matches 1 run data modify storage api: Argument.ID set value 1006
    execute if score $Random Temporary matches 2 run data modify storage api: Argument.ID set value 1007
    execute if score $Random Temporary matches 3 run data modify storage api: Argument.ID set value 1008

# マーカー召喚
    summon marker ~ ~ ~ {Tags:["Object","RW.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    execute as @e[type=marker,tag=RW.This,distance=..100] at @s run function lib:spread_entity/

# 召喚しちゃう
    execute at @e[type=marker,tag=RW.This,distance=..100] run function api:mob/summon

# 演出
    execute at @e[type=marker,tag=RW.This,distance=..100] run particle minecraft:glow ~ ~ ~ 0 0 0 0.4 50

# 殺す
    kill @e[type=marker,tag=RW.This,distance=..100]