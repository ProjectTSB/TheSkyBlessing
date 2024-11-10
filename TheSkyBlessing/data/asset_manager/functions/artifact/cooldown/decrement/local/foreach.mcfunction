#> asset_manager:artifact/cooldown/decrement/local/foreach
#
#
#
# @within function asset_manager:artifact/cooldown/decrement/local/*

# デクリメント
    data modify storage asset:artifact DecrementedLCDs append from storage asset:artifact LCDs[-1]
    execute store result score $Value Temporary run data get storage asset:artifact LCDs[-1].Value
    execute if score $Value Temporary matches -14.. run scoreboard players remove $Value Temporary 1
    execute store result storage asset:artifact DecrementedLCDs[-1].Value int 1 run scoreboard players get $Value Temporary
# 末尾削除
    data remove storage asset:artifact LCDs[-1]
# 要素があれば再帰
    execute if data storage asset:artifact LCDs[0] run function asset_manager:artifact/cooldown/decrement/local/foreach
