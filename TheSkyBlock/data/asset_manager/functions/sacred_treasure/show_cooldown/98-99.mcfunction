#> asset_manager:sacred_treasure/show_cooldown/98-99
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/96-99

execute if score $CoolDown Temporary matches 98 run title @s actionbar [{"text":"||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 99 run title @s actionbar [{"text":"|","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]