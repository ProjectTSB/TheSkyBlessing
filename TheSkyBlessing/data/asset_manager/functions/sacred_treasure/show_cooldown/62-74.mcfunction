#> asset_manager:sacred_treasure/show_cooldown/62-74
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-74

execute if score $CoolDown Temporary matches 62..67 run function asset_manager:sacred_treasure/show_cooldown/62-67
execute if score $CoolDown Temporary matches 68..74 run function asset_manager:sacred_treasure/show_cooldown/68-74