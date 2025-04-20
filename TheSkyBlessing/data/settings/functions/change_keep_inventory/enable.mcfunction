#> settings:change_keep_inventory/enable
# @within function settings:send_setting_menu

tellraw @a [{"text":"死亡時インベントリ保護を "},{"text":"有効","color":"green"},{"text":" にしました。"}]
data modify storage global Config.IsKeepInventory set value true
