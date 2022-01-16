#> asset_manager:sacred_treasure/show_cooldown/81-83
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/81-86

execute if score $CoolDown Temporary matches 81 run title @s actionbar [{"text":"|||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 82 run title @s actionbar [{"text":"||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 83 run title @s actionbar [{"text":"|||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]