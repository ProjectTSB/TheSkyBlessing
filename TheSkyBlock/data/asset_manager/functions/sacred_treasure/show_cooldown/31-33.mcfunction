#> asset_manager:sacred_treasure/show_cooldown/31-33
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/31-36

execute if score $CoolDown Temporary matches 31 run title @a actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 32 run title @a actionbar [{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 33 run title @a actionbar [{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||","color":"gray"}]