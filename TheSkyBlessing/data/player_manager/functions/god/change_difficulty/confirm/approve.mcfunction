#> player_manager:god/change_difficulty/confirm/approve
# @within function player_manager:god/change_difficulty/confirm/listener

# 通知
    tellraw @a [{"text":"難易度変更の申請が受理されました。"}]
    execute if entity @a[predicate=lib:in_battle] run tellraw @a [{"text":"全プレイヤーが非戦闘状態になった時点で難易度が変更されます。"}]
# ループ
    function player_manager:god/change_difficulty/confirm/schedule
