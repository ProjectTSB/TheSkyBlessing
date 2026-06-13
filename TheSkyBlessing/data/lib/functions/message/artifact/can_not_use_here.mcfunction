#> lib:message/artifact/can_not_use_here
#
# 「ここでは使用できません。」
#
# @api

#> Private
# @private
    #declare score_holder $CurrentTick

# クールダウン
    execute store result score $CurrentTick Temporary run data get storage global Time
    scoreboard players operation $CurrentTick Temporary -= @s CannotUseHereLatestLogTick
    execute if score $CurrentTick Temporary matches 20.. run tellraw @s [{"text":"ここでは使用できません。","color":"red"}]
    execute if score $CurrentTick Temporary matches 20.. store result score @s CannotUseHereLatestLogTick run time query gametime
    scoreboard players reset $CurrentTick Temporary
