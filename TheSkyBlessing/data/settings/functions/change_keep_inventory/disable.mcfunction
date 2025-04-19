#> settings:change_keep_inventory/disable
# @within function settings:send_setting_menu

tellraw @a [{"text":"死亡時インベントリ保護を "},{"text":"無効","color":"red"},{"text":" にしました。"}]
data modify storage global Config.IsKeepInventory set value false
