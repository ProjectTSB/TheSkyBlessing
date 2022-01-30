#> asset_manager:sacred_treasure/show_cooldown/75-86
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/75-99

execute if score $CoolDown Temporary matches 75..80 run function asset_manager:sacred_treasure/show_cooldown/75-80
execute if score $CoolDown Temporary matches 81..86 run function asset_manager:sacred_treasure/show_cooldown/81-86