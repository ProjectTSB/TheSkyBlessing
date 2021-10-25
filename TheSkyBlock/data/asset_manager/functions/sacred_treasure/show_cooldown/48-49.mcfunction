#> asset_manager:sacred_treasure/show_cooldown/48-49
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/46-49

execute if score $CoolDown Temporary matches 48 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 49 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]