#> asset_manager:sacred_treasure/show_cooldown/93-95
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/93-99

execute if score $CoolDown Temporary matches 93 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 94 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 95 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]