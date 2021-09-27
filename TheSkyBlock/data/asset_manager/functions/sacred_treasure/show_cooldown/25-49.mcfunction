#> asset_manager:sacred_treasure/show_cooldown/25-49
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-49

execute if score $CoolDown Temporary matches 25..36 run function asset_manager:sacred_treasure/show_cooldown/25-36
execute if score $CoolDown Temporary matches 37..49 run function asset_manager:sacred_treasure/show_cooldown/37-49