#> asset_manager:sacred_treasure/show_cooldown/6-11
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-11

execute if score $CoolDown Temporary matches 6..8 run function asset_manager:sacred_treasure/show_cooldown/6-8
execute if score $CoolDown Temporary matches 9..11 run function asset_manager:sacred_treasure/show_cooldown/9-11