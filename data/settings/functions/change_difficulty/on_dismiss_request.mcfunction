#> settings:change_difficulty/on_dismiss_request
# @within function settings:change_difficulty/confirm/listener/

# ボタン無効化
    execute as @a run function settings:change_difficulty/disable_dismiss_request_button

tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":"によって、難易度変更が却下されました。"}]}
schedule clear settings:change_difficulty/end_dismiss_time
data remove storage settings: DifficultyChangeLock
data remove storage settings: DifficultyTarget
