#> asset:artifact/0078.self_destruct_order/trigger/count_down
#
#
#
# @within function
#    asset:artifact/0078.self_destruct_order/trigger/3.main
#    asset:artifact/0078.self_destruct_order/trigger/count_down
#    asset:artifact/0078.self_destruct_order/trigger/rejoin_process

scoreboard players add @a[tag=26.Owner] 26.TickCount 1

# 3秒数後実行
    execute as @a[tag=26.Owner,scores={26.TickCount=60..}] run function asset:artifact/0078.self_destruct_order/trigger/explosion

# 再起処理
    execute if entity @a[tag=26.Owner, limit=1] run schedule function asset:artifact/0078.self_destruct_order/trigger/count_down 1t