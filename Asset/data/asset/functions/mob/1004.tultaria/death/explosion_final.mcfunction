#> asset:mob/1004.tultaria/death/explosion_final
#
# どか～ん！と爆発する
#
# @within function asset:mob/1004.tultaria/death/4.main
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 4 2
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 0.7
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 4 1
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 1
particle cloud ~ ~1 ~ 1 1 1 0.1 50
particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
particle minecraft:end_rod ~ ~10 ~ 0.2 5 0.2 0.05 200 force @a[distance=..30]
kill @s
