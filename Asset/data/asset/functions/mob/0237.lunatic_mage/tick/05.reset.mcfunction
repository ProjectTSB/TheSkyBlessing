#> asset:mob/0237.lunatic_mage/tick/05.reset
#
# リセットします
#
# @within function asset:mob/0237.lunatic_mage/skill/*/01.manage

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s 6J.Tick -60
    tag @s remove 6J.Fire
    tag @s remove 6J.Water
    tag @s remove 6J.Thunder
    tag @s remove 6J.Magic
    tag @s remove 6J.Fire2
    tag @s remove 6J.LeftRotation
