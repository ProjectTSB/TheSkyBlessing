#> asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.3.fairy_main
#
#
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.1.fairy_tick

# 近くにプレイヤーがいるなら針が抜ける
    execute if entity @a[distance=..2] run data modify entity @s HasStung set value 1b
    execute unless entity @a[distance=..2] run data modify entity @s HasStung set value 0b

# もやんのでせいで常時AngerTimrを書き換えざるを得ない
    data modify entity @s AngerTime set value 2147483647

# パーティクル
    particle minecraft:crit ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]

# パーティクル(ノーマル)
    execute if entity @s[tag=295Fa.Normal] run particle minecraft:dust 0.5 0.5 0.5 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=295Fa.Normal] run particle minecraft:dust 1 1 1 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(火)
    execute if entity @s[tag=295Fa.Fire] run particle minecraft:dust 1 0.451 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=295Fa.Fire] run particle minecraft:dust 1 0.235 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(水)
    execute if entity @s[tag=295Fa.Water] run particle minecraft:dust 0.298 0.471 0.945 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=295Fa.Water] run particle minecraft:dust 0.576 0.733 0.973 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# パーティクル(雷)
    execute if entity @s[tag=295Fa.Thunder] run particle minecraft:dust 0.878 1 0.333 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    execute if entity @s[tag=295Fa.Thunder] run particle minecraft:dust 0.816 1 0 0.5 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# 付近に敵がいるならスコア加算
    execute if entity @e[type=#lib:hostile,distance=..10] run scoreboard players add @s 295Fa.Tick 1

# 魔法攻撃
    execute if entity @s[scores={295Fa.Tick=20..}] run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot

# 付近に敵がいないならスコアリセット
    execute unless entity @e[type=#lib:hostile,distance=..10] run scoreboard players reset @s 295Fa.Tick

# ヘルス
    scoreboard players add @s 295Fa.Health 1
    kill @s[scores={295Fa.Health=300..}]

# 透明化
    effect give @s invisibility 1 0 true

# ダメージを受けるとショットになる
#    execute if entity @s[tag=HurtEntity] run function asset:sacred_treasure/0295.call_elemental_familiar/trigger/3.4.fairy_shoot
#    execute if entity @s[tag=HurtEntity] run kill @s

# Y0以下で死ぬ
    execute if entity @s[y=0,dy=-255] run kill @s