#> asset_manager:sacred_treasure/triggers/using_item/increment
#
# アイテム使用時間を加算します
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

scoreboard players add @s UsingItem.Mainhand 1
scoreboard players add @s UsingItem.Offhand 1
# core:handler/using_itemに移動
# scoreboard players add @s UsingItem 1