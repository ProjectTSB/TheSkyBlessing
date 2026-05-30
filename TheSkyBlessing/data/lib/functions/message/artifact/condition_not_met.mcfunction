#> lib:message/artifact/condition_not_met
#
# 「発動条件を満たしていません。」
#
# @api

#> Private
# @private
    #declare score_holder $CurrentTick

# クールダウン
    execute store result score $CurrentTick Temporary run data get storage global Time
    scoreboard players operation $CurrentTick Temporary -= @s ConditionNotMetLatestLogTick
    execute if score $CurrentTick Temporary matches 20.. run tellraw @s [{"text":"発動条件を満たしていません。","color":"red"}]
    execute if score $CurrentTick Temporary matches 20.. store result score @s ConditionNotMetLatestLogTick run time query gametime
    scoreboard players reset $CurrentTick Temporary
