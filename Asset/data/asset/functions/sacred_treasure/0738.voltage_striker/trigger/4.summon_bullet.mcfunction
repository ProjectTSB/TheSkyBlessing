#> asset:artifact/0738.voltage_striker/trigger/4.summon_bullet
#
# 散弾を召喚する
#
# @within function asset:artifact/0738.voltage_striker/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker
    #declare tag Init
    #declare score_holder $Random

# 召喚する
    summon marker ~ ~ ~ {Tags:["Projectile","KI.Bullet","Init"]}

# UserIDコピー
    scoreboard players operation @e[type=marker,tag=KI.Bullet,tag=Init,distance=..0.01,limit=1] KI.UserID = @s UserID

# 開始タイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    scoreboard players operation $Random Temporary -= $2 Const

# $Randomの値を移す
    scoreboard players operation @e[type=marker,tag=KI.Bullet,tag=Init,distance=..0.01,limit=1] KI.Tick = $Random Temporary

# 前方拡散を実行する

# 設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 2.8
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 向きをSpreadMarkerに合わせる
    tp @e[type=marker,tag=KI.Bullet,tag=Init,distance=..0.01,limit=1] ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes

# Initを削除
    tag @e[type=marker,tag=KI.Bullet,tag=Init,distance=..0.01,limit=1] remove Init

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
    scoreboard players reset $Random Temporary