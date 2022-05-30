#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/main
#
# ファミリアちゃんの動作部分
#
# @within asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/tick

#> ファミリアちゃんの移動先を決定するマーカーのタグ
# @private
#declare tag 87.MoveMarker

# マスターに対して誘導移動
    execute facing entity @p[distance=5..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 近くのマスターにMarkerを召喚する
    execute at @p[distance=..5] run summon marker ~ ~2 ~ {Tags:[87.MoveMarker]}

# マーカーに向かう
    execute facing entity @e[type=marker,tag=87.MoveMarker,distance=1..7,limit=1] eyes run tp @s ^ ^ ^0.1

# 接地で上を向く
    execute unless block ~ ~-0.5 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-15
    execute positioned ~ ~1.68 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# パーティクル
    particle minecraft:crit ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# パーティクル(ノーマル)
    execute if entity @s[tag=87.Normal] run particle minecraft:dust 0.5 0.5 0.5 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.Normal] run particle minecraft:dust 1 1 1 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(火)
    execute if entity @s[tag=87.Fire] run particle minecraft:dust 1 0.451 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.Fire] run particle minecraft:dust 1 0.235 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(水)
    execute if entity @s[tag=87.Water] run particle minecraft:dust 0.298 0.471 0.945 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.Water] run particle minecraft:dust 0.576 0.733 0.973 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(雷)
    execute if entity @s[tag=87.Thunder] run particle minecraft:dust 0.878 1 0.333 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=87.Thunder] run particle minecraft:dust 0.816 1 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# 付近に敵がいるならスコア加算
    execute if entity @e[type=#lib:hostile,distance=..10] run scoreboard players add @s 87.Tick 1

# 魔法攻撃
    #execute if entity @s[scores={87.Tick=20..}] run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/fairy/shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[type=#lib:hostile,distance=..10] run scoreboard players reset @s 87.Tick

# ヘルス
    scoreboard players remove @s 87.Health 1
    kill @s[scores={87.Health=..0}]

# ダメージを受けるとショットになる
#    execute if entity @s[tag=HurtEntity] run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot
#    execute if entity @s[tag=HurtEntity] run kill @s

# Y0以下で死ぬ
    execute if entity @s[y=0,dy=-255] run kill @s

# リセット
    kill @e[type=marker,tag=87.MoveMarker]