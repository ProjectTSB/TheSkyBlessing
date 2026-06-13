#> lib:message/artifact/dont_have_require_items
#
# 「発動に必要なアイテムを所持していません。」
#
# @api

#> Private
# @private
    #declare score_holder $CurrentTick

# クールダウン
    execute store result score $CurrentTick Temporary run data get storage global Time
    scoreboard players operation $CurrentTick Temporary -= @s DontHaveRequiredItemsLatestLogTick
    execute if score $CurrentTick Temporary matches 20.. run tellraw @s [{"text":"発動に必要なアイテムを所持していません。","color":"red"}]
    execute if score $CurrentTick Temporary matches 20.. store result score @s DontHaveRequiredItemsLatestLogTick run time query gametime
    scoreboard players reset $CurrentTick Temporary
