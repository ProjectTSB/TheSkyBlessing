#> asset_manager:artifact/triggers/using_item/increment
#
# アイテム使用時間スコアを加算
#
# @within function asset_manager:artifact/triggers/using_item/

scoreboard players add @s UsingItem 1
scoreboard players add @s UsingItem.Mainhand 1
scoreboard players add @s UsingItem.Offhand 1
