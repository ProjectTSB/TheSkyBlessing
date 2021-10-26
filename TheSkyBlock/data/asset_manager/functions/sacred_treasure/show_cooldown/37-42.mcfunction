#> asset_manager:sacred_treasure/show_cooldown/37-42
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/37-49

execute if score $CoolDown Temporary matches 37..39 run function asset_manager:sacred_treasure/show_cooldown/37-39
execute if score $CoolDown Temporary matches 40..42 run function asset_manager:sacred_treasure/show_cooldown/40-42