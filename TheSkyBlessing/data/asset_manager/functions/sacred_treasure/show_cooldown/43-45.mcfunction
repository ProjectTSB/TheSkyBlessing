#> asset_manager:sacred_treasure/show_cooldown/43-45
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/43-49

execute if score $CoolDown Temporary matches 43 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 44 run title @s actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 45 run title @s actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]