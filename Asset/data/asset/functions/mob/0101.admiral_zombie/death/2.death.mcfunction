#> asset:mob/0101.admiral_zombie/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0101.admiral_zombie/death/1.trigger

# 旗をkill
    kill @e[type=armor_stand,tag=2T.BannerAS,distance=..10,sort=nearest,limit=1]