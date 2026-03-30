#> debug:april/bonus/show_bonus_ui

# 選択トリガー
    scoreboard players reset @s 02.Trigger
    scoreboard players enable @s 02.Trigger

# 初期化
    scoreboard players reset $02.Value Temporary

# 出力
    function debug:april/bonus/show_bonus_ui.m

# リスナー
    schedule function debug:april/bonus/trigger_listener 1t
