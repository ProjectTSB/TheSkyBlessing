#> asset_manager:sacred_treasure/show_cooldown/96-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/93-99

execute if score $CoolDown Temporary matches 96..97 run function asset_manager:sacred_treasure/show_cooldown/96-97
execute if score $CoolDown Temporary matches 98..99 run function asset_manager:sacred_treasure/show_cooldown/98-99