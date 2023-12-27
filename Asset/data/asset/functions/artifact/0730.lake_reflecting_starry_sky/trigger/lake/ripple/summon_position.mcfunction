#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/summon_position
#
# 波紋用entityを召喚
#
# @within function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/main

# エリア内の平面上にに敵がいた場合、その位置で召喚するという処理
    execute as @e[type=#lib:living,tag=Enemy,distance=..7.5] positioned ~-7.5 ~-1 ~-7.5 if entity @s[dx=14,dy=4,dz=14] run tag @s add RippleTarget

# 切り取ってもRippleTargetがいた場合、その敵の位置に召喚する
    execute at @e[type=#lib:living,tag=RippleTarget,distance=..7.5,sort=random,limit=1] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# SpreadMarkerを拡散する値を設定する
    execute at @e[type=#lib:living,tag=RippleTarget,distance=..7.5,limit=1] run data modify storage lib: Argument.Bounds set value [[1.5d,1.5d],[0d,0d],[1.5d,1.5d]]

# RippleTargetがいなかった場合、中央に召喚する
    execute unless entity @e[type=#lib:living,tag=RippleTarget,distance=..7.5] run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# RippleTargetがいないエリア全体に拡散する値を設定する
    execute unless entity @e[type=#lib:living,tag=RippleTarget,distance=..7.5] run data modify storage lib: Argument.Bounds set value [[5.3d,5.3d],[0d,0d],[5.3d,5.3d]]

# 拡散する
    execute as @e[type=marker,tag=SpreadMarker,distance=..7.5,limit=1] at @s run function lib:spread_entity/

# SpreadMarkerの少し上に波紋用エンティティを召喚する
    execute at @e[type=marker,tag=SpreadMarker,distance=..10,sort=nearest,limit=1] positioned ~ ~ ~ run summon marker ~ ~3 ~ {Tags:["KA.Ripple","KA.RejoinTarget","Object"]}

# UserIDをコピーする
    scoreboard players operation @e[type=marker,tag=KA.Ripple,distance=..10,limit=1] KA.UserID = @s KA.UserID

# ループ開始
    schedule function asset:artifact/0730.lake_reflecting_starry_sky/trigger/lake/ripple/loop 1t replace

# リセット
    data remove storage lib: Argument
    tag @e[type=#lib:living,tag=RippleTarget,distance=..10] remove RippleTarget
    kill @e[type=marker,tag=SpreadMarker,distance=..10]