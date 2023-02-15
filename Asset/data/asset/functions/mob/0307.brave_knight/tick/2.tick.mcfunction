#> asset:mob/0307.brave_knight/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0307.brave_knight/tick/1.trigger

#> 移動先を決定するマーカーのタグ
# @private
    #declare tag 0307.MoveMarker
    #declare tag 0307.MoveMarkerInit

# 同IDのプレイヤーを特定
    execute at @a[distance=..60] if score @s 8J.OwnerID = @p UserID run tag @p add 8J.OwnerPlayer

# マスターにMarkerを召喚する
    execute at @p[tag=8J.OwnerPlayer,distance=..60] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[0307.MoveMarker,0307.MoveMarkerInit]}

# マスターの最寄りの敵を自身のターゲットとする
    execute at @p[tag=8J.OwnerPlayer,distance=..60] run tag @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] add 0307.TargetedEnemy

# MarkerにID付与
    scoreboard players operation @e[type=marker,tag=0307.MoveMarkerInit,distance=..60,sort=nearest,limit=1] 8J.OwnerID = @s 8J.OwnerID
    tag @e[type=marker,tag=0307.MoveMarkerInit,distance=..60,sort=nearest,limit=1] remove 0307.MoveMarkerInit

# 同IDのマーカーを特定
    execute at @e[type=marker,tag=0307.MoveMarker,distance=..60] if score @s 8J.OwnerID = @e[type=marker,tag=0307.MoveMarker,distance=..0.01,sort=nearest,limit=1] 8J.OwnerID run tag @e[type=marker,tag=0307.MoveMarker,distance=..0.01,sort=nearest,limit=1] add 8J.OwnerMarker

# マスターのマーカーに誘導移動
    execute if entity @s[tag=!8J.AttackMode] facing entity @e[type=marker,tag=8J.OwnerMarker,distance=1..60,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# マーカーが近づいたらゆっくりと向かう
    execute if entity @s[tag=!8J.AttackMode] facing entity @e[type=marker,tag=8J.OwnerMarker,distance=0.5..1,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.1

# 攻撃停止モード時、マーカーが近づいたらタグ解除
    execute if entity @e[type=marker,tag=8J.OwnerMarker,distance=..3,limit=1] run tag @s[tag=8J.StopAttack] remove 8J.StopAttack

# 付近に敵がいたら攻撃モードへと移行
    execute if entity @s[tag=!8J.AttackMode,tag=!8J.StopAttack] if entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..8] run function asset:mob/0307.brave_knight/tick/event/dash
    execute if entity @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy,distance=..8] run tag @s[tag=!8J.StopAttack] add 8J.AttackMode

# 攻撃モード時の処理
    execute if entity @s[tag=8J.AttackMode] run function asset:mob/0307.brave_knight/tick/event/attack_mode

# パーティクル
    particle minecraft:dust 0.5 0.9 1 0.5 ~ ~0.3 ~ 0.03 0.03 0.03 0 1 force @a[distance=..60]
    particle minecraft:dust 0.4 0.7 1 1 ~ ~0.3 ~ 0.1 0.1 0.1 0 1

# 離れ過ぎると消える
    execute unless entity @e[type=marker,tag=8J.OwnerMarker,distance=..40,limit=1] run function asset:mob/0307.brave_knight/tick/event/disapper

# ヘルス
   scoreboard players remove @s 8J.LifeTime 1
   execute if score @s 8J.LifeTime matches 0 run function asset:mob/0307.brave_knight/tick/event/disapper

# リセット
    kill @e[type=marker,tag=0307.MoveMarker]
    tag @a[tag=8J.OwnerPlayer] remove 8J.OwnerPlayer
    tag @e[type=#lib:living,tag=Enemy,tag=0307.TargetedEnemy] remove 0307.TargetedEnemy