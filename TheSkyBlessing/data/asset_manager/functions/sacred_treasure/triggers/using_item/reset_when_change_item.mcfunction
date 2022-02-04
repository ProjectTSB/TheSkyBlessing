#> asset_manager:sacred_treasure/triggers/using_item/reset_when_change_item
#
# 各slotについて前のアイテムデータと一致していない場合、その値のスコアボードを1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. ここら辺のfunctionが実行されるのはUsingItemしてる時、つまり0|nullではない時だから
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

# mainhand
    execute if entity @s[tag=ChangeMainhand] run scoreboard players set @s UsingItem.MainH 1
# offhand
    execute if entity @s[tag=ChangeOffhand] run scoreboard players set @s UsingItem.OffH 1