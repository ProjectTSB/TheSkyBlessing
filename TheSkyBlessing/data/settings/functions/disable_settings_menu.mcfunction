#> settings:disable_settings_menu
#
#
#
# @within function settings:**

data modify storage api: Argument.Key set value "change_difficulty_request_normal"
function api:button/disable
data modify storage api: Argument.Key set value "change_difficulty_request_hard"
function api:button/disable
data modify storage api: Argument.Key set value "change_difficulty_request_blessless"
function api:button/disable

data modify storage api: Argument.Key set value "change_keep_inventory_disable"
function api:button/disable
data modify storage api: Argument.Key set value "change_keep_inventory_enable"
function api:button/disable

data modify storage api: Argument.Key set value "change_damage_type_icon_disable"
function api:button/disable
data modify storage api: Argument.Key set value "change_damage_type_icon_enable"
function api:button/disable
