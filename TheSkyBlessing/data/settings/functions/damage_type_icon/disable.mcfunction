#> settings:damage_type_icon/disable
# @within function settings:send_setting_menu

tellraw @a [{"text":"ダメージログ属性表示を "},{"text":"無効","color":"red"},{"text":" にしました。"}]
data modify storage global Config.EnableDamageTypeIcon set value false
