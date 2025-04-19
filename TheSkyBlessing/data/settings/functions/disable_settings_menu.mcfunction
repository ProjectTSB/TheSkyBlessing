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
