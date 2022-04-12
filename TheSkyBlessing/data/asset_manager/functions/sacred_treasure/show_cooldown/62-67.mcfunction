#> asset_manager:sacred_treasure/show_cooldown/62-67
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/62-74

execute if score $CoolDown Temporary matches 62..64 run function asset_manager:sacred_treasure/show_cooldown/62-64
execute if score $CoolDown Temporary matches 65..67 run function asset_manager:sacred_treasure/show_cooldown/65-67