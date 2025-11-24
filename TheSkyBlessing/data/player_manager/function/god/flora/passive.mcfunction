#> player_manager:god/flora/passive
#
#
#
# @within function player_manager:god/tick

# 天候が雨または雷雨ならスコアを増やす
# エンドだと2重でスコアが増えるので対策している
    execute if predicate lib:weather/is_raining run scoreboard players add @s FloraFoodRegenCooldown 1
    execute if predicate lib:weather/is_thundering unless predicate lib:dimension/is_end run scoreboard players add @s FloraFoodRegenCooldown 1

# スコアが100なら満腹度回復を得る
    execute if entity @s[scores={FloraFoodRegenCooldown=100..}] run effect give @s saturation 1 0 true

# リセット
    execute if entity @s[scores={FloraFoodRegenCooldown=100..}] run scoreboard players reset @s FloraFoodRegenCooldown
