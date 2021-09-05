#> asset:mob/0108.necromancer/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0108.necromancer/death/1.trigger

# 演出
    particle soul ~ ~1.2 ~ 0.3 0.4 0.3 0 20 normal @a
    particle witch ~ ~1.2 ~ 0.4 0.4 0.4 0.1 30 normal @a
    playsound entity.enderman.death master @a ~ ~ ~ 0.8 0.5 0

# エクトプラズムも道連れ
    kill @e[type=vex,scores={MobID=7},distance=..25]