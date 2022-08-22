#> asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
#
# 非スニーク時に普通の弾を発射する処理
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/3.main

# 演出
    

# 弾用Markerを召喚
    summon marker ~ ~ ~ {Tags:["Projectile","LD.Bullet"]}

# UserIDをコピー
    scoreboard players operation @e[type=marker,tag=LD.Bullet,tag=!LD.Already,distance=..0.01,limit=1] LD.UserID = @s UserID
    tp @e[type=marker,tag=LD.Bullet,tag=!LD.Already,distance=..0.01,limit=1] ~ ~1.7 ~ ~ ~

# 念のために発射済みTagをつけておく
    tag @e[type=marker,tag=LD.Bullet,tag=!LD.Already,distance=..0.01,limit=1] add LD.Already

# 最後に使ったtickを記録
    execute store result score @s LD.LatestUseTick run time query gametime

# 弾用ループ開始
    schedule function asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop 1t replace