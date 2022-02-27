#> asset_manager:sacred_treasure/show_cooldown/3-5
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/0-5

execute if score $CoolDown Temporary matches 3 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 4 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 5 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]