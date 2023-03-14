#> asset:artifact/0953.meteor_rain/trigger/meteor/3.main
#
# メイン処理部分
#
# @within function asset:artifact/0953.meteor_rain/trigger/meteor/2.tick

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]

# 追尾する
    execute facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-700 facing entity @s eyes positioned as @s run function asset:artifact/0953.meteor_rain/trigger/meteor/4.move
    execute unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] run function asset:artifact/0953.meteor_rain/trigger/meteor/4.move