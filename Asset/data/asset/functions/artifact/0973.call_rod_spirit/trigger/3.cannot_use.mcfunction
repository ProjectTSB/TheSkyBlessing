#> asset:artifact/0973.call_rod_spirit/trigger/3.cannot_use
#
#
#
# @within function asset:artifact/0973.call_rod_spirit/trigger/2.check_condition

# 効果音
    playsound minecraft:block.note_block.bass player @s ~ ~ ~ 5 1
    playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 2 1.5

# メッセージ
    tellraw @s [{"text":"既に召喚しています。","color":"red"}]

# リセット
    tag @s remove R1.CannotUse