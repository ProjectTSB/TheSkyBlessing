#> asset:artifact/0758.sina_tk/trigger/bullet/loop
#
# ループ処理を行う
#
# @within function
#   asset:artifact/0758.sina_tk/trigger/3.main
#   asset:artifact/0758.sina_tk/trigger/bullet/main
#   asset:artifact/0758.sina_tk/trigger/rejoin_process

# 実行
    execute as @e[type=marker,tag=L2.Bullet] at @s run function asset:artifact/0758.sina_tk/trigger/bullet/main