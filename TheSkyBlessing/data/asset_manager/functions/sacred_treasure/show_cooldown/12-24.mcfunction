#> asset_manager:sacred_treasure/show_cooldown/12-24
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-24

execute if score $CoolDown Temporary matches 12..17 run function asset_manager:sacred_treasure/show_cooldown/12-17
execute if score $CoolDown Temporary matches 18..24 run function asset_manager:sacred_treasure/show_cooldown/18-24