#> asset_manager:artifact/triggers/using_item/reset
#
# 最早アイテムを使用していない場合に使用時間スコアをすべてリセット
#
# @within function asset_manager:artifact/triggers/

scoreboard players reset @s UsingItem
scoreboard players reset @s UsingItem.Mainhand
scoreboard players reset @s UsingItem.Offhand
