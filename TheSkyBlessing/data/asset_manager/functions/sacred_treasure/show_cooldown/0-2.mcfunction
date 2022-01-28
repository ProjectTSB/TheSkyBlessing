#> asset_manager:sacred_treasure/show_cooldown/0-2
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-5

execute if score $CoolDown Temporary matches 0 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"green"}]
execute if score $CoolDown Temporary matches 1 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|","color":"gray"}]
execute if score $CoolDown Temporary matches 2 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||","color":"gray"}]