#> asset_manager:sacred_treasure/triggers/check_change_equipment/reset
#
# 付与された各スロットの変更記録タグを削除します
#
# @within function asset_manager:sacred_treasure/triggers/

tag @s remove ChangeMainhand
tag @s remove ChangeOffhand
tag @s remove ChangeHead
tag @s remove ChangeChest
tag @s remove ChangeLegs
tag @s remove ChangeFeet