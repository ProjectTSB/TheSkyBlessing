#> asset_manager:sacred_treasure/show_cooldown/12-14
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/12-17

execute if score $CoolDown Temporary matches 12 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 13 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 14 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||","color":"gray"}]