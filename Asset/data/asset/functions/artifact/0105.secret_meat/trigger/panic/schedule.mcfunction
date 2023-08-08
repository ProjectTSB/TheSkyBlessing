#> asset:artifact/0105.secret_meat/trigger/panic/schedule
#
#
#
# @within
#   function asset:artifact/0105.secret_meat/trigger/dead_effect
#   function asset:artifact/0105.secret_meat/trigger/panic/schedule
#   function asset:artifact/0105.secret_meat/trigger/rejoin_process

# コマンドを実行する
    execute as @a[tag=2X.Panic] at @s run function asset:artifact/0105.secret_meat/trigger/panic/panic
# Scheduleループをする
    execute if entity @a[tag=2X.Panic] run schedule function asset:artifact/0105.secret_meat/trigger/panic/schedule 1t