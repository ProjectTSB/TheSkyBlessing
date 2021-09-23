#> asset_manager:sacred_treasure/show_cooldown/0-5
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-11

execute if score $CoolDown Temporary matches 0..2 run function asset_manager:sacred_treasure/show_cooldown/0-2
execute if score $CoolDown Temporary matches 3..5 run function asset_manager:sacred_treasure/show_cooldown/3-5