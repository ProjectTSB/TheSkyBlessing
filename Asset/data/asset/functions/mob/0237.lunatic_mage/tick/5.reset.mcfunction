#> asset:mob/0237.lunatic_mage/tick/5.reset
#
# リセットします
#
# @within function asset:mob/0237.lunatic_mage/skill/*/1

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s 6L.Tick -60
    tag @s remove 6L.Fire
    tag @s remove 6L.Water
    tag @s remove 6L.Thunder
    tag @s remove 6L.Magic
    tag @s remove 6L.Fire2
    tag @s remove 6L.ElementalConfine
    tag @s remove 6L.LeftRotation

# ポーズもリセット
    item replace entity @s armor.head with stick{CustomModelData:20198}
