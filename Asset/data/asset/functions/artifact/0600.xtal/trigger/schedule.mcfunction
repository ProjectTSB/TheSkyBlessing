#> asset:artifact/0600.xtal/trigger/schedule
#
#
#
# @within function
#       asset:artifact/0600.xtal/trigger/3.main
#       asset:artifact/0600.xtal/trigger/schedule
#       asset:artifact/0600.xtal/trigger/rejoin_process
# プレイヤーに実行させる
    execute as @a[scores={GO.Time=1..}] at @s run function asset:artifact/0600.xtal/trigger/4.wait_time
# ループする
    execute if entity @a[scores={GO.Time=1..}] run schedule function asset:artifact/0600.xtal/trigger/schedule 1t replace