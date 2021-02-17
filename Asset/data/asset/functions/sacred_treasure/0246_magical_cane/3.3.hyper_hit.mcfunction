#> asset:sacred_treasure/0246_magical_cane/3.3.hyper_hit
#
# MP120以上
#
# @within function asset:sacred_treasure/0246_magical_cane/3.main

    playsound minecraft:item.totem.use player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 2 2

# 付近のヒットさせた敵にパーティクルを出す
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run particle firework ~ ~1 ~ 0 0 0 0.2 20
    execute as @e[type=#lib:living,type=!player,tag=AttackedEntity,distance=..10] if score @s AttackedEntity = @a[tag=this,limit=1] AttackedEntity run particle minecraft:end_rod ~ ~2 ~ 0.1 1 0.1 0.01 50