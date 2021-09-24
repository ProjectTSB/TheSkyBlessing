#> asset_manager:sacred_treasure/show_cooldown/12-17
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/12-24

execute if score $CoolDown Temporary matches 12..14 run function asset_manager:sacred_treasure/show_cooldown/12-14
execute if score $CoolDown Temporary matches 15..17 run function asset_manager:sacred_treasure/show_cooldown/15-17