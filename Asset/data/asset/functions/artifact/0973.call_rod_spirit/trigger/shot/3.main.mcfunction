#> asset:artifact/0973.call_rod_spirit/trigger/shot/3.main
#
# ショットが飛んでいく！
#
# @within function
#   asset:artifact/0973.call_rod_spirit/trigger/shot/2.tick
#   asset:artifact/0973.call_rod_spirit/trigger/shot/3.main

# パーティクル
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
    particle dust 1000000000 100000000 100000000 0.7 ~ ~ ~ 0.05 0.05 0.05 0 1

# 再帰移動
    function asset:artifact/0973.call_rod_spirit/trigger/shot/4.move