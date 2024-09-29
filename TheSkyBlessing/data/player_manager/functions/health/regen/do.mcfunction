#> player_manager:health/regen/do
#
# HP自然回復の回復処理
#
# @within function player_manager:health/regen/check

# 0.5秒に1度回復する
# 満腹度 | 戦闘時 | 非戦闘時
#   20      1.25%      2.0%
# 18..19    0.75%      1.5%
#  7..17    0.25%      0.75%
#   ..6     0.00%      0.25%

#> PrivateS
# @private
    #declare score_holder $FoodLevel

# 満腹度を取得する
    function api:data_get/food_level
    execute store result score $FoodLevel Temporary run data get storage api: foodLevel

# 回復する
    # 戦闘時
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 20 store result storage api: Argument.Fluctuation double 0.00125 run attribute @s generic.max_health get 10
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 18..19 store result storage api: Argument.Fluctuation double 0.001 run attribute @s generic.max_health get 10
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 7..17 store result storage api: Argument.Fluctuation double 0.00025 run attribute @s generic.max_health get 10
    # 非戦闘時
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 20 store result storage api: Argument.Fluctuation double 0.002 run attribute @s generic.max_health get 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 18..19 store result storage api: Argument.Fluctuation double 0.0015 run attribute @s generic.max_health get 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 7..17 store result storage api: Argument.Fluctuation double 0.00075 run attribute @s generic.max_health get 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches ..6 store result storage api: Argument.Fluctuation double 0.00025 run attribute @s generic.max_health get 10
    data modify storage api: Argument.DisableLog set value true
    function lib:score_to_health_wrapper/fluctuation

# スコアのリセット
    scoreboard players reset @s HPRegenCooldown
    scoreboard players reset $FoodLevel Temporary
