#> asset:mob/0139.blast_eye/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0139.blast_eye/hurt/1.trigger

# 被ダメージ音
    # playsound minecraft:block.shroomlight.break master @a ~ ~ ~ 2 0.75
    playsound minecraft:block.stem.break master @a ~ ~ ~ 1 0.5
    playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.5
    playsound minecraft:block.basalt.place master @a ~ ~ ~ 1 0.5

# 物足りないのでparticle
    execute anchored eyes run particle minecraft:block minecraft:magma_block ^ ^ ^ 0.1 0.1 0.1 2 5
    execute anchored eyes run particle minecraft:block minecraft:blackstone ^ ^ ^ 0.1 0.1 0.1 2 10