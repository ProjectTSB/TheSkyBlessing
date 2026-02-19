#> settings:damage_type_icon/disable
# @within function settings:send_setting_menu

tellraw @a [{"text":"ダメージログ属性表示を "},{"text":"無効","color":"red"},{"text":" にしました。"}]
data modify storage global Config.EnableDamageTypeIcon set value false

function settings:disable_settings_menu
function settings:resend_setting_menu/reserve.m {Resend:14}
