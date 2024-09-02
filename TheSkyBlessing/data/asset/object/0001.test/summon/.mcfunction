#> asset:object/0001.test/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,billboard:"center",Tags:["ObjectInit"],item:{id:"minecraft:snowball",Count:1b}}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
