#> asset_manager:sacred_treasure/cooldown/foreach/decrement
#
#
#
# @within function
#   asset_manager:sacred_treasure/cooldown/
#   asset_manager:sacred_treasure/cooldown/foreach/decrement

#> For decrement
# @private
#declare score_holder $Value

# デクリメント
    data modify storage asset:sacred_treasure DecrementedLCDs append from storage asset:sacred_treasure LCDs[-1]
    execute store result score $Value Temporary run data get storage asset:sacred_treasure LCDs[-1].Value
    execute if score $Value Temporary matches -14.. run scoreboard players remove $Value Temporary 1
    execute store result storage asset:sacred_treasure DecrementedLCDs[-1].Value int 1 run scoreboard players get $Value Temporary
# 末尾削除
    data remove storage asset:sacred_treasure LCDs[-1]
# 要素があれば再帰
    execute if data storage asset:sacred_treasure LCDs[0] run function asset_manager:sacred_treasure/cooldown/foreach/decrement