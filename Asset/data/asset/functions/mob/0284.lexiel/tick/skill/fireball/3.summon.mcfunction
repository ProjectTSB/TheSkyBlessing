#> asset:mob/0284.lexiel/tick/skill/fireball/3.summon
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/fireball/1.fireball

# マーカー召喚
    summon marker ~ ~0.5 ~ {Tags:["Object","7W.This"]}

# 拡散する
    data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute positioned ^ ^ ^1 as @e[type=marker,tag=7W.This,distance=..100] run function lib:spread_entity/

# モブを出す
    data modify storage api: Argument.ID set value 285
    execute positioned as @e[type=marker,tag=7W.This,distance=..100] positioned ~ ~1 ~ run function api:mob/summon

# 演出
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
# キル
    kill @e[type=marker,tag=7W.This,distance=..100]