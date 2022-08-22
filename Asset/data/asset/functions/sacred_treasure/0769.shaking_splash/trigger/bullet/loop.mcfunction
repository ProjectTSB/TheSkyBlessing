#> asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop
#
# 弾のスケジュールループ処理
#
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
#   asset:sacred_treasure/0769.shaking_splash/trigger/bullet/main
#   asset:sacred_treasure/0769.shaking_splash/trigger/rejoin_process

# メイン処理
    execute as @e[type=marker,tag=LD.Bullet] at @s run function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/main