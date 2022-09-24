#> asset:mob/0139.blast_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0139.blast_eye/death/1.trigger

# 被ダメージ音
    # playsound minecraft:block.shroomlight.break hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.stem.break hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.stone.break hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:item.shovel.flatten hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:item.bone_meal.use hostile @a ~ ~ ~ 1 0.5

# 物足りないのでparticle
    particle minecraft:block minecraft:magma_block ~ ~1.8 ~ 0.35 0.35 0.35 2 10
    particle minecraft:block minecraft:blackstone ~ ~1.8 ~ 0.35 0.35 0.35 2 30
    particle minecraft:large_smoke ~ ~1.8 ~ 0.5 0.5 0.5 0.04 15