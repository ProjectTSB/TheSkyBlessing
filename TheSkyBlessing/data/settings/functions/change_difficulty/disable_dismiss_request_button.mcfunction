#> settings:change_difficulty/disable_dismiss_request_button
#
#
#
# @within function
#   settings:change_difficulty/end_dismiss_time
#   settings:change_difficulty/on_dismiss_request

# ボタン無効化
    data modify storage api: Argument.Key set value "change_difficulty_request_dismiss"
    function api:button/disable
