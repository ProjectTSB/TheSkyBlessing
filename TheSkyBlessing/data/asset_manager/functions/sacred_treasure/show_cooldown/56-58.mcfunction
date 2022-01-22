#> asset_manager:sacred_treasure/show_cooldown/56-58
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/56-61

execute if score $CoolDown Temporary matches 56 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 57 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 58 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]