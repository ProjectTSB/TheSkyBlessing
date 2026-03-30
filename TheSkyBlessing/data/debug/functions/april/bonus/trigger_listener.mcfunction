#> debug:april/bonus/trigger_listener

# チェック
    execute as @a[scores={02.Trigger=1..}] run function debug:april/bonus/on_trigger
# ループ
    execute if entity @a[scores={02.Trigger=0},limit=1] run schedule function debug:april/bonus/trigger_listener 1t
