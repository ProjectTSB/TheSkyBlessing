#> asset:artifact/0769.shaking_splash/trigger/4.shoot
#
# 非スニーク時に普通の弾を発射する処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/3.main

# 弾用Markerを召喚
    execute anchored eyes positioned ^-0.35 ^-0.35 ^0.5 run summon marker ~ ~ ~ {Tags:["Projectile","LD.Bullet","LD.Init"]}

# UserIDをコピー
    scoreboard players operation @e[type=marker,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] LD.UserID = @s UserID

# 向き合わせ
    execute as @e[type=marker,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] at @s rotated as @p[tag=this] run tp @s ~ ~ ~ ~ ~

# Init削除
    tag @e[type=marker,tag=LD.Bullet,tag=LD.Init,distance=..3,limit=1] remove LD.Init

# 弾用ループ開始
    schedule function asset:artifact/0769.shaking_splash/trigger/bullet/loop 1t replace