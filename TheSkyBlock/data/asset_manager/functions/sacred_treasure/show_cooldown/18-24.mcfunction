#> asset_manager:sacred_treasure/show_cooldown/18-24
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/12-24

execute if score $CoolDown Temporary matches 18..20 run function asset_manager:sacred_treasure/show_cooldown/18-20
execute if score $CoolDown Temporary matches 21..24 run function asset_manager:sacred_treasure/show_cooldown/21-24