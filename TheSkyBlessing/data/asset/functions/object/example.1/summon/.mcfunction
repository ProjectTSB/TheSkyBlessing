#> asset:object/example.1/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/65534/summon

# 元となるEntityを召喚する
# 「防具をかぶせたアーマースタンドがいい」とかそういう場合は、モブアセットとは違いここにそのまま書くこと
    summon item_display ~ ~ ~ {teleport_duration:1,billboard:"center",Tags:["ObjectInit"],item:{id:"minecraft:ender_pearl",Count:1b}}

# 実装フラグを立てる
data modify storage asset:object Implement set value true
