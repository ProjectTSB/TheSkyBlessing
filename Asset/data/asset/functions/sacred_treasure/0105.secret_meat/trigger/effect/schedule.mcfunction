#> asset:sacred_treasure/0105.secret_meat/trigger/effet/schedule
#
#
#
# @within
#   function asset:sacred_treasure/0105.secret_meat/trigger/dead_effect
#   function asset:sacred_treasure/0105.secret_meat/trigger/effet/schedule
#   function asset:sacred_treasure/0105.secret_meat/trigger/rejoin_process

# コマンドを実行する
    execute as @a[tag=2X.effet] at @s run function asset:sacred_treasure/0105.secret_meat/trigger/effet/effet
# Scheduleループをする
    execute if entity @a[tag=2X.effet] run schedule function asset:sacred_treasure/0105.secret_meat/trigger/effet/schedule 1t