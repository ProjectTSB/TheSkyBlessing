#> asset:mob/1004.tultaria/tick/skill/dash_slash/back_slash_start
#
# 後方斬撃の予告
#
# @within function asset:mob/1004.tultaria/tick/skill/dash_slash/1.tick

# パーティクル
    execute positioned ~ ~1 ~ positioned ^ ^ ^-3 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 20 force @a[distance=..20]
    execute positioned ~ ~1 ~ positioned ^ ^ ^-7 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 20 force @a[distance=..20]
    execute positioned ~ ~1 ~ positioned ^ ^ ^-11 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 20 force @a[distance=..20]

# サウンド
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 2