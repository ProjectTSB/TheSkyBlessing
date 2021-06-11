#> player_manager:mp/regen/check
#
# MPの再生クールダウンを減少させ、クールダウンのチェックを行う
#
# @within function core:tick/player

# クールダウンの減少
    scoreboard players remove @s MPRegenCooldown 1
# 0なら回復処理
    execute if score @s MPRegenCooldown matches 0 run function player_manager:mp/regen/do