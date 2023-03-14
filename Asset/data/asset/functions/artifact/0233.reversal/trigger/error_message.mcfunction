#> asset:artifact/0233.reversal/trigger/error_message
#
#
#
# @within function asset:artifact/0233.reversal/trigger/2.check_condition

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 0.7
tellraw @s {"text":"発動条件を満たしていません。","color":"red"}