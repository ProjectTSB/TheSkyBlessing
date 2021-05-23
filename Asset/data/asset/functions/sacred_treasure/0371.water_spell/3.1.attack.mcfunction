#> asset:sacred_treasure/0371.water_spell/3.1.attack
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0371.water_spell/3.main

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 200
    playsound minecraft:entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1