#> asset_manager:sacred_treasure/show_cooldown/21-22
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/21-24

execute if score $CoolDown Temporary matches 21 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 22 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]