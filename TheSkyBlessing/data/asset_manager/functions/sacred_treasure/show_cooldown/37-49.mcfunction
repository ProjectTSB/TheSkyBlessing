#> asset_manager:sacred_treasure/show_cooldown/37-49
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/25-49

execute if score $CoolDown Temporary matches 37..42 run function asset_manager:sacred_treasure/show_cooldown/37-42
execute if score $CoolDown Temporary matches 43..49 run function asset_manager:sacred_treasure/show_cooldown/43-49