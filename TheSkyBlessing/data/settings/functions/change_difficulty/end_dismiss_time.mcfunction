#> settings:change_difficulty/end_dismiss_time
# @within function
#   settings:change_difficulty/on_change_difficulty.m
#   settings:change_difficulty/on_dismiss_request

# ボタン無効化
    data modify storage api: Argument.Key set value "change_difficulty_request_dismiss"
    function api:button/disable
# 通知
    tellraw @a [{"text":"難易度変更の申請が受理されました。"}]
    execute if entity @a[predicate=lib:in_battle] run tellraw @a [{"text":"全プレイヤーが非戦闘状態になった時点で難易度が変更されます。"}]
# ループ
    function settings:change_difficulty/watch_in_battle
