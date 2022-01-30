#> asset_manager:sacred_treasure/show_cooldown/28-30
#
# クールダウンゲージの表示を軽量に行う
#
# @within function asset_manager:sacred_treasure/show_cooldown/25-30

execute if score $CoolDown Temporary matches 28 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 29 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]
execute if score $CoolDown Temporary matches 30 run title @s actionbar [{"text":"","font":"cooldown","color":"#00D3FF"},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|."},{"text":"|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.|.","color":"#233645"},{"text":"-]","color":"white"}]