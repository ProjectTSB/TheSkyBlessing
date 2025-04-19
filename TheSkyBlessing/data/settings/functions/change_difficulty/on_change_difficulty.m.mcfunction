#> settings:change_difficulty/on_change_difficulty.m
# @input args
#   To: int
# @within function settings:change_difficulty/on_change_difficulty_to_*

# ボタン無効化
    function settings:disable_settings_menu

# ロックチェック
    execute if data storage settings: {DifficultyChangeLock:1b} run return run tellraw @s [{"text":"既に難易度変更プロセスが進行中です。","color":"red"}]

# 難易度
    $data modify storage settings: DifficultyTarget set value $(To)

# 一人だったらそのまま変更
    execute if score $PlayerCount Global matches 1 run return run function settings:change_difficulty/change

# ====== 以下は複数人の時の処理 ======

# ロックをかける
    data modify storage settings: DifficultyChangeLock set value true

# 難易度テキスト取得
    function api:global_vars/get_difficulty
    function settings:common/get_difficulty_text.m with storage api: Return
    data modify storage settings: CurrentDifficultyText set from storage settings: DifficultyText
    tellraw @s [{"text":"難易度: "},{"storage":"settings:","nbt":"DifficultyText","interpret":true}]

    $function settings:common/get_difficulty_text.m {Difficulty:$(To)}
    data modify storage settings: TargetDifficultyText set from storage settings: DifficultyText

# 本人への通知
    tellraw @s [{"text":"難易度 "},{"storage":"settings:","nbt":"TargetDifficultyText","interpret":true},{"text":" への変更申請を行いました。"}]
    tellraw @s [{"text":"却下がない場合、30秒経過ののち全プレイヤーの戦闘状態が解除されたときに難易度が変更されます。","color":"aqua"}]
# 全体通知
    tellraw @a[tag=!this] {"text":"","extra":[{"selector":"@s"},{"text":"により、難易度変更の申請が行われました。"}]}
    tellraw @a[tag=!this] [{"text":"変更前の難易度: "},{"storage":"settings:","nbt":"CurrentDifficultyText","interpret":true}]
    tellraw @a[tag=!this] [{"text":"変更後の難易度: "},{"storage":"settings:","nbt":"TargetDifficultyText","interpret":true}]
    tellraw @a[tag=!this] [{"text":"却下する場合は30秒以内に以下の却下ボタンを押してください。","color":"aqua"}]
    execute as @a[tag=!this] run function settings:change_difficulty/send_request_dismiss_button

# Dismiss されなければ実行される変更処理
    schedule function settings:change_difficulty/end_dismiss_time 30s

# リセット
    data remove storage settings: CurrentDifficultyText
    data remove storage settings: TargetDifficultyText
