#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/main
#
# ゴーストちゃんの動作部分
#
# @within asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick

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
    execute facing entity @e[type=marker,tag=87.MarkerThis,distance=1..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.23 ~ ~

# マーカーが近づいたらゆっくりと向かう
    execute facing entity @e[type=marker,tag=87.MarkerThis,distance=0.5..1,limit=1] eyes run tp @s ^ ^ ^0.1

# 付近に敵がいたらそっちへの攻撃を優先
    execute facing entity @e[tag=Enemy,distance=..10,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.05 ~ ~

# パーティクル
    particle minecraft:dust 1 1 1 1 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust 1 0.451 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust 1 1 0.5 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust 0.576 0.733 0.973 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# 付近に敵がいるならスコア加算
    execute if entity @e[tag=Enemy,distance=..10] run scoreboard players add @s 87.Tick 1

# 魔法攻撃
    execute if entity @s[scores={87.Tick=10..}] rotated ~ 0 positioned ^0.1 ^0.4 ^0.5 run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[tag=Enemy,distance=..10] run scoreboard players reset @s 87.Tick

# ヘルス
    #scoreboard players remove @s 87.Health 1
    kill @s[scores={87.Health=..0}]

# ダメージを受けるとショットになる
#    execute if entity @s[tag=HurtEntity] run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot
#    execute if entity @s[tag=HurtEntity] run kill @s

# Y0以下で死ぬ
    execute if entity @s[y=0,dy=-255] run kill @s

# リセット
    kill @e[type=marker,tag=87.MoveMarker]
    #kill @s