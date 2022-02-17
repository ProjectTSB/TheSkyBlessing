#> asset_manager:sacred_treasure/triggers/using_item/reset_when_change_item
#
# 手持ちアイテムが前のアイテムデータと一致していない場合、その手のスコアボードを1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. ここら辺のfunctionが実行されるのはUsingItemしてる時、つまり0|nullではない時だから
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

#>
#@private
    #declare score_holder $notEqualM
    #declare score_holder $notEqualO

# mainhand比較
    data modify storage asset:sacred_treasure Temp set from storage asset:context Items.mainhand
    execute store success score $notEqualM Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.mainhand
# offhand比較
    data modify storage asset:sacred_treasure Temp set from storage asset:context Items.offhand
    execute store success score $notEqualO Temporary run data modify storage asset:sacred_treasure Temp set from storage asset:context Old.Items.offhand

# 比較結果から値を設定
    execute if score $notEqualM Temporary matches 1 run scoreboard players set @s UsingItem.MainH 1
    execute if score $notEqualO Temporary matches 1 run scoreboard players set @s UsingItem.OffH 1

# リセット
    scoreboard players reset $notEqualM Temporary
    scoreboard players reset $notEqualO Temporary
    data remove storage asset:sacred_treasure Temp