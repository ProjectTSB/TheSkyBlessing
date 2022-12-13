#> asset:mob/0273.hell_blade/chase/rotate/-9
#
#
#
# @within function asset:mob/0273.hell_blade/chase/rotate/

# SFX
    playsound block.note_block.bit hostile @a ~ ~ ~ 1 2
    playsound block.piston.extend hostile @a ~ ~ ~ 1 2

# モデル適応
    data modify entity @s ArmorItems[3].tag.CustomModelData set value 20161
