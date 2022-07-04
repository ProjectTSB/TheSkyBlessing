#> asset:sacred_treasure/0089.magic_hoe/trigger/error_message
#
#
#
# @within function asset:sacred_treasure/0089.magic_hoe/trigger/2.check_condition

tellraw @s [{"text":"近くに作物がある必要があります。","color":"red"}]
playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 0.7