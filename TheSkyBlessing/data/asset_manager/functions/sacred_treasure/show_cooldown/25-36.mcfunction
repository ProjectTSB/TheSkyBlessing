#> asset_manager:sacred_treasure/show_cooldown/25-36
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/25-49

execute if score $CoolDown Temporary matches 25..30 run function asset_manager:sacred_treasure/show_cooldown/25-30
execute if score $CoolDown Temporary matches 31..36 run function asset_manager:sacred_treasure/show_cooldown/31-36