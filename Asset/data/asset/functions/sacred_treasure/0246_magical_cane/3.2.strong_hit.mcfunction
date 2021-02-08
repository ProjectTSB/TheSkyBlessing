#> asset:sacred_treasure/0246_magical_cane/3.2.strong_hit
#
# 40~120くらいの消費
#
# @within function asset:sacred_treasure/0246_magical_cane/3.main

    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 2 2

# 付近のヒットさせた敵にパーティクルを出す
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10] run particle enchanted_hit ~ ~1 ~ 0 0 0 0.5 20
    execute at @e[type=#lib:living,tag=HurtEntity,distance=..10] run particle minecraft:dust 0.5 0.75 1 1 ~ ~2 ~ 0.1 1 0.1 0 50