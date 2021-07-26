#> player_manager:mp/regen/check
#
# MPの再生クールダウンを減少させ、クールダウンのチェックを行う
#
# @within function core:tick/player

# 回復してからの時間を加算
    scoreboard players add @s MPRegenCooldown 1
# 20なら回復処理
    execute if score @s MPRegenCooldown matches 20 run function player_manager:mp/regen/do