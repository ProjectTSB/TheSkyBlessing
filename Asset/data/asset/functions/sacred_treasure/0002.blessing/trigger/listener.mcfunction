#> asset:sacred_treasure/0002.blessing/trigger/listener
#
#
#
# @within function
#   asset:sacred_treasure/0002.blessing/trigger/3.main
#   asset:sacred_treasure/0002.blessing/trigger/listener

# チェック
    execute as @a[scores={02.Trigger=1..}] run function asset:sacred_treasure/0002.blessing/trigger/on_trigger
# ループ
    execute if entity @a[scores={02.Trigger=0},limit=1] run schedule function asset:sacred_treasure/0002.blessing/trigger/listener 1t