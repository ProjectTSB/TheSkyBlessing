#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/3.main
#
# ゴーストちゃんの動作部分
#
# @within asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/2.tick

#> ゴーストちゃんの移動先を決定するマーカーのタグ
# @private
#declare tag 87.MoveMarker
#declare tag 87.MarkerInit
#declare tag 87.MarkerThis

# マスターにMarkerを召喚する
    execute at @p[distance=..30] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[87.MoveMarker,87.MarkerInit]}

# MarkerにID付与
    scoreboard players operation @e[type=marker,tag=87.MarkerInit,sort=nearest,limit=1] 87.UserID = @s 87.UserID
    tag @e[type=marker,tag=87.MarkerInit,sort=nearest,limit=1] remove 87.MarkerInit

# 同IDのマーカーを特定
    execute at @e[type=marker,tag=87.MoveMarker] if score @s 87.UserID = @e[type=marker,tag=87.MoveMarker,sort=nearest,limit=1] 87.UserID run tag @e[type=marker,tag=87.MoveMarker,sort=nearest,limit=1] add 87.MarkerThis

# マスターのマーカーに誘導移動
    execute facing entity @e[type=marker,tag=87.MarkerThis,distance=..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.15 ~ ~

# 頭の向き
    execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# 接地で上を向く
    execute positioned ~ ~1 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute positioned ~ ~1.5 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~20 ~-20

# パーティクル
    execute rotated ~ 0 run particle minecraft:dust 1 1 1 1 ^ ^ ^-0.2 0.07 0.07 0.07 0 1 force @a[distance=..30]
    execute rotated ~ 0 run particle minecraft:dust 0.435 0.537 0.69 0.7 ^ ^ ^-0.2 0.1 0.1 0.1 0 1

# 付近に敵がいるならスコ12507390
    execute if entity @e[tag=Enemy,distance=..10] run scoreboard players add @s 87.Tick 1

# 魔法攻撃
    execute if entity @s[scores={87.Tick=20..}] rotated ~ 0 positioned ^0.1 ^0.4 ^0.5 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/4.shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[tag=Enemy,distance=..10] run scoreboard players reset @s 87.Tick

# ヘルス
    scoreboard players remove @s 87.Health 1
    execute if score @s 87.Health matches 0 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/5.disapper

# リセット
    kill @e[type=marker,tag=87.MoveMarker]