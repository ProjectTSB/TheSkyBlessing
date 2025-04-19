#> settings:damage_type_icon/enable
# @within function settings:send_setting_menu

tellraw @a [{"text":"ダメージログ属性表示を "},{"text":"有効","color":"green"},{"text":" にしました。"}]
data modify storage global Config.IsKeepInventory set value true
