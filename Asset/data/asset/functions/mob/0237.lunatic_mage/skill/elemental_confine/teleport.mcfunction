#> asset:mob/0237.lunatic_mage/skill/elemental_confine/teleport
#
# テレポート時のパーティクル
#
# @within function asset:mob/0237.lunatic_mage/**

# 演出
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 20
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 2 2