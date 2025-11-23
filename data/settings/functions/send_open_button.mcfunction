#> settings:send_open_button
#
#
#
# @within function world_manager:area/01-00.gate_island

tellraw @s {"text":""}

data modify storage api: Argument.Label set value '"ゲーム設定を開く"'
data modify storage api: Argument.Key set value "open_settings"
data modify storage api: Argument.Listener set value "settings:send_setting_menu"
function api:button/send
