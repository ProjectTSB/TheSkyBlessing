#> core:tick/player/pre
#
#
#
# @within function core:tick/

function player_manager:manage_tag/

function player_manager:pos_fix_and_calc_diff

function player_manager:in_battle_tick_score

execute if data storage global {IsNeedItemMigration:true} run function asset_manager:artifact/tick/migrate/
