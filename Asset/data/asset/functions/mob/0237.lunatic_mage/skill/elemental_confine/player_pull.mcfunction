#> asset:mob/0237.lunatic_mage/skill/elemental_confine/player_pull
#
# プレイヤーを呼ぶ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

# エフェクト
    summon area_effect_cloud ~ ~ ~ {Particle:"crit",Radius:0.5f,Duration:6,Age:4,effects:[{id:"slowness",amplifier:9b,duration:40},{id:"blindness",amplifier:0b,duration:15}]}

# 演出
    playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 2
    particle minecraft:portal ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal @s