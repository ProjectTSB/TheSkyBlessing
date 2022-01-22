#> asset_manager:sacred_treasure/show_cooldown/56-61
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-61

execute if score $CoolDown Temporary matches 56..58 run function asset_manager:sacred_treasure/show_cooldown/56-58
execute if score $CoolDown Temporary matches 59..61 run function asset_manager:sacred_treasure/show_cooldown/59-61