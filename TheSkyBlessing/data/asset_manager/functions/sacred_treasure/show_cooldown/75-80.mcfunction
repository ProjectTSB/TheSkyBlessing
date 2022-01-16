#> asset_manager:sacred_treasure/show_cooldown/75-80
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/75-86

execute if score $CoolDown Temporary matches 75..77 run function asset_manager:sacred_treasure/show_cooldown/75-77
execute if score $CoolDown Temporary matches 78..80 run function asset_manager:sacred_treasure/show_cooldown/78-80