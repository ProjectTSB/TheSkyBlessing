#> asset_manager:sacred_treasure/show_cooldown/87-89
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/87-92

execute if score $CoolDown Temporary matches 87 run title @a actionbar [{"text":"|||||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 88 run title @a actionbar [{"text":"||||||||||||","color":"yellow"},{"text":"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]
execute if score $CoolDown Temporary matches 89 run title @a actionbar [{"text":"|||||||||||","color":"yellow"},{"text":"|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||","color":"gray"}]