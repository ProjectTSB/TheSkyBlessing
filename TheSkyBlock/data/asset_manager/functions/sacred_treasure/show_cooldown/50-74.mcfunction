#> asset_manager:sacred_treasure/show_cooldown/50-74
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-99

execute if score $CoolDown Temporary matches 50..61 run function asset_manager:sacred_treasure/show_cooldown/50-61
execute if score $CoolDown Temporary matches 62..74 run function asset_manager:sacred_treasure/show_cooldown/62-74