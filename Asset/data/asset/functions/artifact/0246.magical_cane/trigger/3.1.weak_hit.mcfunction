#> asset:artifact/0246.magical_cane/trigger/3.1.weak_hit
#
# MPほぼ消費せずに使った場合
#
# @within function asset:artifact/0246.magical_cane/trigger/3.main

    stopsound @s player minecraft:entity.player.attack.strong
    stopsound @s player minecraft:entity.player.attack.knockback
    stopsound @s player minecraft:entity.player.attack.crit
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 2 0.75
    playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 2 0

# 付近のヒットさせた敵によわそ～なパーティクルを出す
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle crit ~ ~1 ~ 0 0 0 0.5 10