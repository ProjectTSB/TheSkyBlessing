#> settings:change_keep_inventory/disable
# @within function settings:send_setting_menu

tellraw @a [{"text":"死亡時インベントリ保護を "},{"text":"無効","color":"red"},{"text":" にしました。"}]
data modify storage global Config.IsKeepInventory set value false

function settings:disable_settings_menu
function settings:resend_setting_menu/reserve.m {Resend:14}
