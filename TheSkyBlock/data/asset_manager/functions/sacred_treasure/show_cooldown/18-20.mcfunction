#> asset_manager:sacred_treasure/show_cooldown/18-20
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/18-24

execute if score $CoolDown Temporary matches 18 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 19 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 20 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||","color":"gray"}]