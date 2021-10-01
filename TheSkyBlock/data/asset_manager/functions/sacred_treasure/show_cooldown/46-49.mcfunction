#> asset_manager:sacred_treasure/show_cooldown/46-49
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/43-49

execute if score $CoolDown Temporary matches 46..47 run function asset_manager:sacred_treasure/show_cooldown/46-47
execute if score $CoolDown Temporary matches 48..49 run function asset_manager:sacred_treasure/show_cooldown/48-49