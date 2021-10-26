#> asset_manager:sacred_treasure/show_cooldown/34-36
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/31-36

execute if score $CoolDown Temporary matches 34 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 35 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 36 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||","color":"gray"}]