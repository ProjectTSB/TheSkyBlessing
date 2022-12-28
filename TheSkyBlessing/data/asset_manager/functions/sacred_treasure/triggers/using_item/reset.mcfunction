#> asset_manager:sacred_treasure/triggers/using_item/reset
#
# アイテム使用中トリガー用スコアボードをすべてリセットします
#
# @within function core:tick/player/post

scoreboard players reset @s UsingItem.Mainhand
scoreboard players reset @s UsingItem.Offhand