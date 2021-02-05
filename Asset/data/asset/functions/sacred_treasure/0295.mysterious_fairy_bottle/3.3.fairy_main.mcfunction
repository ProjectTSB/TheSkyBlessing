#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.3.fairy_main
#
#
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick

# 近くにプレイヤーがいるなら針が抜ける
    execute if entity @a[distance=..2] run data modify entity @s HasStung set value 1b
    execute unless entity @a[distance=..2] run data modify entity @s HasStung set value 0b

# もやんのでせいで常時AngerTimrを書き換えざるを得ない
    data modify entity @s AngerTime set value 2147483647

# パーティクル
    particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    #particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:dust 0.5 0.5 1 0.75 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust 0.5 0.8 1 0.75 ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]

# 透明化
    effect give @s invisibility 1 0 true

# ダメージを受けるとショットになる
    execute if entity @s[tag=HurtEntity] run function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.4.fairy_shoot
    execute if entity @s[tag=HurtEntity] run kill @s

# Y0以下で死ぬ
    execute if entity @s[y=0,dy=-255] run kill @s