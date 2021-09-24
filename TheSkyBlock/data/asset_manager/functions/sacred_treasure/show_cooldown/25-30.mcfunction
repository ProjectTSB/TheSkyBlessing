#> asset_manager:sacred_treasure/show_cooldown/25-30
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/25-36

execute if score $CoolDown Temporary matches 25..27 run function asset_manager:sacred_treasure/show_cooldown/25-27
execute if score $CoolDown Temporary matches 28..30 run function asset_manager:sacred_treasure/show_cooldown/28-30