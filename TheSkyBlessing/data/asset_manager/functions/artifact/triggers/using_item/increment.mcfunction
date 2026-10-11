#> asset_manager:artifact/triggers/using_item/increment
#
# アイテム使用時間スコアを加算
#
# @within function asset_manager:artifact/triggers/using_item/

scoreboard players add @s UsingItem 1
# 神器を握っている場合のみ
execute unless data storage asset:context Items.mainhand.tag.TSB{ID:-2} run scoreboard players add @s UsingItem.Mainhand 1
execute unless data storage asset:context Items.offhand.tag.TSB{ID:-2} run scoreboard players add @s UsingItem.Offhand 1
