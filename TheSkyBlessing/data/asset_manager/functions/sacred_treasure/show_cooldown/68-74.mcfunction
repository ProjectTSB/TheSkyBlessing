#> asset_manager:sacred_treasure/show_cooldown/68-74
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/62-74

execute if score $CoolDown Temporary matches 68..70 run function asset_manager:sacred_treasure/show_cooldown/68-70
execute if score $CoolDown Temporary matches 71..74 run function asset_manager:sacred_treasure/show_cooldown/71-74