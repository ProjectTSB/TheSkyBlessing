#> core:tick/player/pre
#
#
#
# @within function core:tick/

function player_manager:manage_tag/

function player_manager:pos_fix_and_calc_diff

function world_manager:chunk_io_protect/

# 戦闘中判定のスコア減少
    execute if score @s InBattleTick matches -2147483648..2147483647 run scoreboard players remove @s InBattleTick 1
    execute if score @s InBattleTick matches ..0 run scoreboard players reset @s InBattleTick