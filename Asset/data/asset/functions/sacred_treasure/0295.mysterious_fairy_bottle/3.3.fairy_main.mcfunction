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
    particle minecraft:crit ~ ~0.5 ~ 0.1 0.1 0.1 0 2