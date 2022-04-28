#> asset:sacred_treasure/0933.auto_torch/trigger/can_set_check
#
#
#
# @within function asset:sacred_treasure/0933.auto_torch/trigger/2.check_condition

#> Private
# @private
    #declare tag CanUsed

# 松明を持ってるかチェック
    execute store result score $Count Temporary run clear @s torch 0
    execute if score $Count Temporary matches ..0 run tag @s remove CanUsed
# これtickだとうるさそうだからとりあえずコメントアウト
    # execute if score $Count Temporary matches ..0 run function lib:message/sacred_treasure/dont_have_require_items
    scoreboard players reset $Count Temporary

# プレイヤーがサバイバルかどうかを確認
    execute unless entity @s[gamemode=!spectator,gamemode=!adventure] run tag @s remove CanUsed

# 暗い場所かどうかを確認
    execute if predicate lib:light_level/min/7 run tag @s remove CanUsed

# 設置可能かどうかを確認
    execute unless block ~ ~ ~ #lib:air run tag @s remove CanUsed
    execute if block ~ ~-1 ~ #lib:air run tag @s remove CanUsed