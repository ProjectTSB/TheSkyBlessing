#> asset_manager:sacred_treasure/show_cooldown/40-42
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/37-42

execute if score $CoolDown Temporary matches 40 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 41 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 42 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]