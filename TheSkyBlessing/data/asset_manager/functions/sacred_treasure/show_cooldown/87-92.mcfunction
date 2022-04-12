#> asset_manager:sacred_treasure/show_cooldown/87-92
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/87-99

execute if score $CoolDown Temporary matches 87..89 run function asset_manager:sacred_treasure/show_cooldown/87-89
execute if score $CoolDown Temporary matches 90..92 run function asset_manager:sacred_treasure/show_cooldown/90-92