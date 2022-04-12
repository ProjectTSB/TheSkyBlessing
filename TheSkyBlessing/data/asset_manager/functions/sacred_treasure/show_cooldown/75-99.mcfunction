#> asset_manager:sacred_treasure/show_cooldown/75-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/50-99

execute if score $CoolDown Temporary matches 75..86 run function asset_manager:sacred_treasure/show_cooldown/75-86
execute if score $CoolDown Temporary matches 87..99 run function asset_manager:sacred_treasure/show_cooldown/87-99