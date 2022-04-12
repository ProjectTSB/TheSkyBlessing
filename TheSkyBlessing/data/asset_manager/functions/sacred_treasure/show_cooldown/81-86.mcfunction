#> asset_manager:sacred_treasure/show_cooldown/81-86
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/75-86

execute if score $CoolDown Temporary matches 81..83 run function asset_manager:sacred_treasure/show_cooldown/81-83
execute if score $CoolDown Temporary matches 84..86 run function asset_manager:sacred_treasure/show_cooldown/84-86