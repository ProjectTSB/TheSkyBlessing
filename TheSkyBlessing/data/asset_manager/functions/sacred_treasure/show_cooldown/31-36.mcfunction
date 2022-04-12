#> asset_manager:sacred_treasure/show_cooldown/31-36
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/25-36

execute if score $CoolDown Temporary matches 31..33 run function asset_manager:sacred_treasure/show_cooldown/31-33
execute if score $CoolDown Temporary matches 34..36 run function asset_manager:sacred_treasure/show_cooldown/34-36