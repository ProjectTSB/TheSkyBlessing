#> player_manager:health/regen/check
#
# プレイヤーの自然回復処理
#
# @within function core:tick/player/

# 回復してからのスコアを加算
    scoreboard players add @s HPRegenCooldown 1

# 40tick毎に回復処理
    execute if score @s HPRegenCooldown matches 40.. run function player_manager:health/regen/do
