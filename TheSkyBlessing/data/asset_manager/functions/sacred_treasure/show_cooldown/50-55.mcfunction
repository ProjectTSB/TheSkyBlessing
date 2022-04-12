#> asset_manager:sacred_treasure/show_cooldown/50-55
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-61

execute if score $CoolDown Temporary matches 50..52 run function asset_manager:sacred_treasure/show_cooldown/50-52
execute if score $CoolDown Temporary matches 53..55 run function asset_manager:sacred_treasure/show_cooldown/53-55