#> asset_manager:sacred_treasure/show_cooldown/0-24
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-49

execute if score $CoolDown Temporary matches 0..11 run function asset_manager:sacred_treasure/show_cooldown/0-11
execute if score $CoolDown Temporary matches 12..24 run function asset_manager:sacred_treasure/show_cooldown/12-24