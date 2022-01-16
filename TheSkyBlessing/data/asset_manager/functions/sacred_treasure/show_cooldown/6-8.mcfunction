#> asset_manager:sacred_treasure/show_cooldown/6-8
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/6-11

execute if score $CoolDown Temporary matches 6 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 7 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 8 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||","color":"gray"}]