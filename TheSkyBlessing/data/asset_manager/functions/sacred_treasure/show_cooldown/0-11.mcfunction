#> asset_manager:sacred_treasure/show_cooldown/0-11
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-24

execute if score $CoolDown Temporary matches 0..5 run function asset_manager:sacred_treasure/show_cooldown/0-5
execute if score $CoolDown Temporary matches 6..11 run function asset_manager:sacred_treasure/show_cooldown/6-11