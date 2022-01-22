#> asset_manager:sacred_treasure/show_cooldown/46-47
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/46-49

execute if score $CoolDown Temporary matches 46 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 47 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]