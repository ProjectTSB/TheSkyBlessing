#> asset:mob/0237.lunatic_mage/skill/summon/3.summon
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/summon/1

#> Private
# @private
    #declare score_holder $Count

    playsound minecraft:item.bottle.fill_dragonbreath hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 2

# 何個目の召喚か
    scoreboard players add $Count Temporary 1

# 1ならフレイム、2ならウォーター、3ならサンダーを召喚
    execute if score $Count Temporary matches 1 run data modify storage api: Argument.ID set value 187
    execute if score $Count Temporary matches 2 run data modify storage api: Argument.ID set value 189
    execute if score $Count Temporary matches 3 run data modify storage api: Argument.ID set value 190
    function api:mob/summon

# リセット
    execute if score $Count Temporary matches 3.. run kill @e[type=marker,tag=6L.SummonPoint,distance=..30]
    execute if score $Count Temporary matches 3.. run scoreboard players reset $Count Temporary