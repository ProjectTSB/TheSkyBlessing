#> asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule
#
#
#
# @within
#   function asset:sacred_treasure/0105.secret_meat/trigger/dead_effect
#   function asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule
#   function asset:sacred_treasure/0105.secret_meat/trigger/rejoin_process

# コマンドを実行する
    execute as @a[tag=2X.effect] at @s run function asset:sacred_treasure/0105.secret_meat/trigger/effect/effect
# Scheduleループをする
    execute if entity @a[tag=2X.effect] run schedule function asset:sacred_treasure/0105.secret_meat/trigger/effect/schedule 1t