#> player_manager:health/regen/do
#
# HP自然回復の回復処理
#
# @within function player_manager:health/regen/check

# 1秒に1度回復する
# 満腹度 | 戦闘時 | 非戦闘時
#   20      2.5%      4.0%
# 18..19    1.5%      3.0%
#  7..17    0.5%      1.5%
#   ..6     0.0%      0.5%

#> Private
# @private
    #declare score_holder $FoodLevel

# 満腹度を取得する
    function api:data_get/food_level
    execute store result score $FoodLevel Temporary run data get storage api: foodLevel
# 最大体力を取得する
    function api:modifier/max_health/get

# 最大体力を取得
    function api:modifier/max_health/get

# 回復する
# 戦闘時かつ満腹度が6以下なら回復しない
    # 戦闘時
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 20 store result storage api: Argument.Fluctuation double 0.0025 run data get storage api: Return.MaxHealth 10
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 18..19 store result storage api: Argument.Fluctuation double 0.002 run data get storage api: Return.MaxHealth 10
        execute if predicate lib:in_battle if score $FoodLevel Temporary matches 7..17 store result storage api: Argument.Fluctuation double 0.0005 run data get storage api: Return.MaxHealth 10
    # 非戦闘時
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 20 store result storage api: Argument.Fluctuation double 0.004 run data get storage api: Return.MaxHealth 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 18..19 store result storage api: Argument.Fluctuation double 0.003 run data get storage api: Return.MaxHealth 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches 7..17 store result storage api: Argument.Fluctuation double 0.0015 run data get storage api: Return.MaxHealth 10
        execute unless predicate lib:in_battle if score $FoodLevel Temporary matches ..6 store result storage api: Argument.Fluctuation double 0.0005 run data get storage api: Return.MaxHealth 10
    execute if data storage api: Argument.Fluctuation run data modify storage api: Argument.DisableLog set value true
    execute if data storage api: Argument.Fluctuation run function lib:score_to_health_wrapper/fluctuation

# スコアのリセット
    scoreboard players reset @s HPRegenCooldown
    scoreboard players reset $FoodLevel Temporary
