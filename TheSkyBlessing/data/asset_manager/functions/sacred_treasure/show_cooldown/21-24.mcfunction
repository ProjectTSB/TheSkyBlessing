#> asset_manager:sacred_treasure/show_cooldown/21-24
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/18-24

execute if score $CoolDown Temporary matches 21..22 run function asset_manager:sacred_treasure/show_cooldown/21-22
execute if score $CoolDown Temporary matches 23..24 run function asset_manager:sacred_treasure/show_cooldown/23-24