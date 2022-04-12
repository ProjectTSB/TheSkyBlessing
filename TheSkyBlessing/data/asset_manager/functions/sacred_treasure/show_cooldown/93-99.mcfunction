#> asset_manager:sacred_treasure/show_cooldown/93-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/87-99

execute if score $CoolDown Temporary matches 93..95 run function asset_manager:sacred_treasure/show_cooldown/93-95
execute if score $CoolDown Temporary matches 96..99 run function asset_manager:sacred_treasure/show_cooldown/96-99