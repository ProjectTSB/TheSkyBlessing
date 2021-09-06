#> asset:mob/0108.necromancer/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0108.necromancer/death/1.trigger

# 演出
    particle soul ~ ~0.6 ~ 0.3 0 0.3 0.04 25 normal @a
    particle block black_concrete ~ ~1.2 ~ 0.3 0.4 0.3 0 60 normal @a

# エクトプラズムも道連れ
    kill @e[type=vex,scores={MobID=7},distance=..25]