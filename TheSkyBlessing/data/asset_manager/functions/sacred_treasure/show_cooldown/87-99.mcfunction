#> asset_manager:sacred_treasure/show_cooldown/87-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/75-99

execute if score $CoolDown Temporary matches 87..92 run function asset_manager:sacred_treasure/show_cooldown/87-92
execute if score $CoolDown Temporary matches 93..99 run function asset_manager:sacred_treasure/show_cooldown/93-99