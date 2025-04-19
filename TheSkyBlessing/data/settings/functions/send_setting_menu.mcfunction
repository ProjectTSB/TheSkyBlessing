#> settings:send_setting_menu
#
#
#
# @within function settings:send_open_button

# タイトル
    tellraw @s [{"text":"--------- ゲーム設定 ----------"}]

# 難易度 - タイトル/現在の難易度表示
    function api:global_vars/get_difficulty
    function settings:common/get_difficulty_text.m with storage api: Return
    tellraw @s [{"text":"難易度: "},{"storage":"settings:","nbt":"DifficultyText","interpret":true}]

# 難易度 - ボタン
    data modify storage settings: DifficultyButtons set value ['{"text":""}']

    data modify storage api: Argument.Label set from storage settings: TextRegistry.WithHoverEvent[1]
    data modify storage api: Argument.Key set value "change_difficulty_request_normal"
    execute unless data storage api: Return{Difficulty:1} run data modify storage api: Argument.Listener set value "settings:change_difficulty/on_change_difficulty_to_normal"
    function api:button/create_text_component
    data modify storage settings: DifficultyButtons append from storage api: Return.ButtonTextComponent

    data modify storage api: Argument.Label set from storage settings: TextRegistry.WithHoverEvent[2]
    data modify storage api: Argument.Key set value "change_difficulty_request_hard"
    execute unless data storage api: Return{Difficulty:2} run data modify storage api: Argument.Listener set value "settings:change_difficulty/on_change_difficulty_to_hard"
    function api:button/create_text_component
    data modify storage settings: DifficultyButtons append from storage api: Return.ButtonTextComponent

    data modify storage api: Argument.Label set from storage settings: TextRegistry.WithHoverEvent[3]
    data modify storage api: Argument.Key set value "change_difficulty_request_blessless"
    execute unless data storage api: Return{Difficulty:3} run data modify storage api: Argument.Listener set value "settings:change_difficulty/on_change_difficulty_to_blessless"
    function api:button/create_text_component
    data modify storage settings: DifficultyButtons append from storage api: Return.ButtonTextComponent

    tellraw @s [{"storage":"settings:","nbt":"DifficultyButtons[]","interpret":true,"separator":" "}]

# リセット
    data remove storage settings: DifficultyButtons
