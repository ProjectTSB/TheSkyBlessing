#> asset:artifact/0295.call_elemental_familiar/trigger/fairy/3.main
#
# ファミリアの動作部分
#
# @within asset:artifact/0295.call_elemental_familiar/trigger/fairy/2.tick

#> 移動先を決定するマーカーのタグ
# @private
    #declare tag 87.MoveMarker
    #declare tag 87.MoveMarkerInit
    #declare tag 87.OwnerMarker
    #declare tag 87.OwnerPlayer

# 同IDのプレイヤーを特定
    execute at @a[distance=..30] if score @s 87.UserID = @p UserID run tag @p add 87.OwnerPlayer

# マスターにMarkerを召喚する
    execute at @p[tag=87.OwnerPlayer] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[87.MoveMarker,87.MoveMarkerInit]}

# MarkerにID付与
    scoreboard players operation @e[type=marker,tag=87.MoveMarkerInit,sort=nearest,limit=1] 87.UserID = @s 87.UserID
    tag @e[type=marker,tag=87.MoveMarkerInit,sort=nearest,limit=1] remove 87.MoveMarkerInit

# 同IDのマーカーを特定
    execute at @e[type=marker,tag=87.MoveMarker] if score @s 87.UserID = @e[type=marker,tag=87.MoveMarker,sort=nearest,limit=1] 87.UserID run tag @e[type=marker,tag=87.MoveMarker,sort=nearest,limit=1] add 87.OwnerMarker

# マスターのマーカーに誘導移動
    execute facing entity @e[type=marker,tag=87.OwnerMarker,distance=..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 頭の向き
    execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# 接地で上を向く
    execute positioned ~ ~1 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~20 ~-20

# パーティクル
    execute if entity @s[tag=87.FamiliarFire] positioned ^ ^ ^-0.3 run particle dust 1 0 0 0.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if entity @s[tag=87.FamiliarFire] positioned ^ ^ ^-0.3 run particle dust 1 0.5 0 0.7 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

    execute if entity @s[tag=87.FamiliarThunder] positioned ^ ^ ^-0.3 run particle dust 1 1 0 0.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if entity @s[tag=87.FamiliarThunder] positioned ^ ^ ^-0.3 run particle dust 1 1 0.7 0.7 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

    execute if entity @s[tag=87.FamiliarWater] positioned ^ ^ ^-0.3 run particle dust 0 0.267 1 0.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute if entity @s[tag=87.FamiliarWater] positioned ^ ^ ^-0.3 run particle dust 0 0.667 1 0.7 ~ ~0.8 ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

# 付近に敵がいるならスコア増やす
    execute if entity @e[tag=Enemy,distance=..15] run scoreboard players add @s 87.Tick 1

# 魔法攻撃
    execute if entity @s[scores={87.Tick=20..}] rotated ~ 0 positioned ^0.1 ^0.4 ^0.5 run function asset:artifact/0295.call_elemental_familiar/trigger/fairy/4.shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[tag=Enemy,distance=..15] run scoreboard players reset @s 87.Tick

# 存在時間
    scoreboard players remove @s 87.LifeTime 1
    execute if score @s 87.LifeTime matches 0 run function asset:artifact/0295.call_elemental_familiar/trigger/fairy/5.disapper

# 離れ過ぎると消える
    execute unless entity @e[type=marker,tag=87.OwnerMarker,distance=..30,limit=1] run function asset:artifact/0295.call_elemental_familiar/trigger/fairy/5.disapper

# リセット
    tag @a[tag=87.OwnerPlayer] remove 87.OwnerPlayer
    kill @e[type=marker,tag=87.MoveMarker]