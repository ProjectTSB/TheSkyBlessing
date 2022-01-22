#> asset_manager:sacred_treasure/show_cooldown/90-92
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/87-92

execute if score $CoolDown Temporary matches 90 run title @s actionbar [{"text":"||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 91 run title @s actionbar [{"text":"|||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 92 run title @s actionbar [{"text":"||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]