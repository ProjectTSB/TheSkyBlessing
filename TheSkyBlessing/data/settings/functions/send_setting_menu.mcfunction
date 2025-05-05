#> settings:send_setting_menu
#
#
#
# @within function
#   settings:send_open_button
#   settings:resend_setting_menu/as_schedule

# タイトル
    tellraw @s {"text":""}
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

# 死亡時インベントリ保護 - タイトル/現在の設定
    tellraw @s {"text":""}
    execute if data storage global Config{IsKeepInventory: true} run tellraw @s [{"text":"死亡時インベントリ保護: "},{"text":"有効","color":"green"}]
    execute if data storage global Config{IsKeepInventory:false} run tellraw @s [{"text":"死亡時インベントリ保護: "},{"text":"無効","color":"red"}]

# 死亡時インベントリ保護 - ボタン
    data modify storage settings: KeepInventoryButtons set value ['{"text":""}']

    data modify storage api: Argument.Label set value '"無効"'
    data modify storage api: Argument.Key set value "change_keep_inventory_disable"
    execute unless data storage global Config{IsKeepInventory:false} run data modify storage api: Argument.Listener set value "settings:change_keep_inventory/disable"
    function api:button/create_text_component
    data modify storage settings: KeepInventoryButtons append from storage api: Return.ButtonTextComponent

    data modify storage api: Argument.Label set value '"有効"'
    data modify storage api: Argument.Key set value "change_keep_inventory_enable"
    execute unless data storage global Config{IsKeepInventory: true} run data modify storage api: Argument.Listener set value "settings:change_keep_inventory/enable"
    function api:button/create_text_component
    data modify storage settings: KeepInventoryButtons append from storage api: Return.ButtonTextComponent

    tellraw @s [{"storage":"settings:","nbt":"KeepInventoryButtons[]","interpret":true,"separator":" "}]

# ダメージログ属性表示 - タイトル/現在の設定
    tellraw @s {"text":""}
    execute if data storage global Config{EnableDamageTypeIcon: true} run tellraw @s [{"text":"ダメージログ属性表示: "},{"text":"有効","color":"green"}]
    execute if data storage global Config{EnableDamageTypeIcon:false} run tellraw @s [{"text":"ダメージログ属性表示: "},{"text":"無効","color":"red"}]

# ダメージログ属性表示 - ボタン
    data modify storage settings: DamageTypeIconButtons set value ['{"text":""}']

    data modify storage api: Argument.Label set value '"無効"'
    data modify storage api: Argument.Key set value "change_damage_type_icon_disable"
    execute unless data storage global Config{EnableDamageTypeIcon:false} run data modify storage api: Argument.Listener set value "settings:damage_type_icon/disable"
    function api:button/create_text_component
    data modify storage settings: DamageTypeIconButtons append from storage api: Return.ButtonTextComponent

    data modify storage api: Argument.Label set value '"有効"'
    data modify storage api: Argument.Key set value "change_damage_type_icon_enable"
    execute unless data storage global Config{EnableDamageTypeIcon: true} run data modify storage api: Argument.Listener set value "settings:damage_type_icon/enable"
    function api:button/create_text_component
    data modify storage settings: DamageTypeIconButtons append from storage api: Return.ButtonTextComponent

    tellraw @s [{"storage":"settings:","nbt":"DamageTypeIconButtons[]","interpret":true,"separator":" "}]

# フッター
    tellraw @s [{"text":"----------------------------"}]

# リセット
    data remove storage settings: DifficultyButtons
    data remove storage settings: KeepInventoryButtons
    data remove storage settings: DamageTypeIconButtons
