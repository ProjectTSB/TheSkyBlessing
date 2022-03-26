#> asset_manager:sacred_treasure/show_cooldown/50-61
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-74

execute if score $CoolDown Temporary matches 50..55 run function asset_manager:sacred_treasure/show_cooldown/50-55
execute if score $CoolDown Temporary matches 56..61 run function asset_manager:sacred_treasure/show_cooldown/56-61