#> asset:sacred_treasure/0105.secret_meat/trigger/panic/schedule
#
#
#
# @within
#   function asset:sacred_treasure/0105.secret_meat/trigger/dead_effect
#   function asset:sacred_treasure/0105.secret_meat/trigger/panic/schedule
#   function asset:sacred_treasure/0105.secret_meat/trigger/rejoin_process

# コマンドを実行する
    execute as @a[tag=2X.Panic] at @s run function asset:sacred_treasure/0105.secret_meat/trigger/panic/panic
# Scheduleループをする
    execute if entity @a[tag=2X.Panic] run schedule function asset:sacred_treasure/0105.secret_meat/trigger/panic/schedule 1t