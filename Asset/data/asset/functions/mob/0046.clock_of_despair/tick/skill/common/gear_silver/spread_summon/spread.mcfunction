#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/spread
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/*

#> Val
# @private
#declare score_holder $Continuation

# 前回のデータがある場合に備えてリセット
    scoreboard players reset $Continuation Temporary
# (再)拡散
    data modify storage lib: Argument.Bounds set value [[14,14],[0,0],[14,14]]
    function lib:spread_entity/
# 半径14m以内ではない 又は 他の歯車と重なっている場合再拡散する
    execute at @s unless entity @e[type=zombie,tag=this,distance=..14,limit=1] run scoreboard players set $Continuation Temporary 1
    execute at @s if entity @e[type=armor_stand,tag=GearInit,distance=0.01..3.5] run scoreboard players set $Continuation Temporary 1
    execute if score $Continuation Temporary matches 1 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/spread