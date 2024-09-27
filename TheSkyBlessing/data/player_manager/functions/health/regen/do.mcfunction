#> player_manager:health/regen/do
#
# HP自然回復の回復処理
#
# @within function player_manager:health/regen/check

# 非戦闘時、10tickに1回、最大体力の2%ずつ回復(25秒で全快)
# 戦闘時、10tickに1回、最大体力の1%ずつ回復(仮 50秒で全快)
#
# 戦闘中の回復はあったら嬉しい程度であってほしい
# 自然回復だけで回復は事足りるということはあってほしくない

# 回復する
    execute if predicate lib:in_battle store result storage api: Argument.Heal double 0.001 run attribute @s generic.max_health get 10
    execute unless predicate lib:in_battle store result storage api: Argument.Heal double 0.002 run attribute @s generic.max_health get 10
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/
    function api:heal/reset

# スコアのリセット
    scoreboard players reset @s HPRegenCooldown
