#> settings:show_play_time_on_dispel/disable
# @within function settings:send_setting_menu

tellraw @a [{"text":"解呪時プレイ時間表示を "},{"text":"無効","color":"red"},{"text":" にしました。"}]
data modify storage global Config.ShowPlayTimeOnDispel set value false

function settings:disable_settings_menu
function settings:resend_setting_menu/reserve.m {Resend:14}
