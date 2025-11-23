#> player_manager:in_battle_tick_score
#
# 
#
# @within function core:tick/player/pre

# 戦闘中判定のスコア減少
    execute if score @s InBattleTick matches -2147483648..2147483647 run scoreboard players remove @s InBattleTick 1
    execute if score @s InBattleTick matches ..0 run scoreboard players reset @s InBattleTick