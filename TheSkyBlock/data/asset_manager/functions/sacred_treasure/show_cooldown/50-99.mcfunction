#> asset_manager:sacred_treasure/show_cooldown/50-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/

execute if score $CoolDown Temporary matches 50..74 run function asset_manager:sacred_treasure/show_cooldown/50-74
execute if score $CoolDown Temporary matches 75..99 run function asset_manager:sacred_treasure/show_cooldown/75-99