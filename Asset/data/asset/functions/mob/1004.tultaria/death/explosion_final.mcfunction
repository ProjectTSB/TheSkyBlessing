#> asset:mob/1004.tultaria/death/explosion_final
#
# どか～ん！と爆発する
#
# @within function asset:mob/1004.tultaria/death/4.main

# 演出
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 4 2
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 1
    particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:cloud ~ ~1 ~ 1 1 1 0.1 50
    particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.6 200

# 画面エフェクト
    title @a[distance=..30] times 5 15 20
    title @a[distance=..30] title {"text":"","font":"screen_effect"}

# 消滅
    kill @s
