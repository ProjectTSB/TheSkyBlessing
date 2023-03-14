#> asset:artifact/0738.voltage_striker/trigger/bullet/loop
#
# 弾のループ処理
#
# @within function
#   asset:artifact/0738.voltage_striker/trigger/3.main
#   asset:artifact/0738.voltage_striker/trigger/bullet/main
#   asset:artifact/0738.voltage_striker/trigger/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=KI.Bullet] at @s run function asset:artifact/0738.voltage_striker/trigger/bullet/main