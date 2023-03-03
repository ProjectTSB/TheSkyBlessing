#> asset:artifact/0246.magical_cane/trigger/3.2.strong_hit
#
# 40~120くらいの消費
#
# @within function asset:artifact/0246.magical_cane/trigger/3.main

    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1.5 2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1.5 2

# 付近のヒットさせた敵にパーティクルを出す
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 20
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle minecraft:dust 0.5 0.75 1 1 ~ ~2 ~ 0.1 1 0.1 0 50