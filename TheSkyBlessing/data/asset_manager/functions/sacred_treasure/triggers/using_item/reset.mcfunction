#> asset_manager:sacred_treasure/triggers/using_item/reset
#
# アイテム使用中トリガー用スコアボードをすべてリセットします
#
# @within function core:tick/post-tick-proc_player

scoreboard players reset @s UsingItem.MainH
scoreboard players reset @s UsingItem.OffH