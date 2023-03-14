#> asset:artifact/0002.blessing/trigger/listener
#
#
#
# @within function
#   asset:artifact/0002.blessing/trigger/3.main
#   asset:artifact/0002.blessing/trigger/listener

# チェック
    execute as @a[scores={02.Trigger=1..}] run function asset:artifact/0002.blessing/trigger/on_trigger
# ループ
    execute if entity @a[scores={02.Trigger=0},limit=1] run schedule function asset:artifact/0002.blessing/trigger/listener 1t