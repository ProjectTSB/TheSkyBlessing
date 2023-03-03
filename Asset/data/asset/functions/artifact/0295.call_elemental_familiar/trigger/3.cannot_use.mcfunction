#> asset:artifact/0295.call_elemental_familiar/trigger/3.cannot_use
#
#
#
# @within function
#   asset:artifact/0295.call_elemental_familiar/trigger/2.check_condition

# 効果音
    playsound minecraft:block.note_block.bass player @s ~ ~ ~ 5 1
    playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 2 1.5

# メッセージ
    tellraw @s [{"text":"既に召喚しています。","color":"red"}]

# 使用不可に
    tag @s remove 87.CannotUse