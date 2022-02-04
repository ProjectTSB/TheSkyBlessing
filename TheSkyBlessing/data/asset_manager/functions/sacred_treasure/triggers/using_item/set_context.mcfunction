#> asset_manager:sacred_treasure/triggers/using_item/set_context
#
# asset:contextにアイテムを使用している時間のデータを設定します
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

execute store result storage asset:context UsingItemTime.mainhand int 1 run scoreboard players get @s UsingItem.MainH
execute store result storage asset:context UsingItemTime.offhand int 1 run scoreboard players get @s UsingItem.OffH