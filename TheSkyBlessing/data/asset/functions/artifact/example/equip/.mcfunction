#> asset:artifact/example/equip/
#
# 神器の装備した時の処理
#
# @within function asset:artifact/alias/65535/equip

# VFX
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 2
    particle dust 0.278 0.733 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10
    particle dust 100000000 1 1 1 ~ ~1.5 ~ 0.5 1 0.5 0 150
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2
