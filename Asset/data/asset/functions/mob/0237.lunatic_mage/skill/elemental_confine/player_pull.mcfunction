#> asset:mob/0237.lunatic_mage/skill/elemental_confine/player_pull
#
# プレイヤーを呼ぶ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/1

    effect give @s blindness 2 0 true
    playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 2 2
    particle minecraft:portal ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal @s