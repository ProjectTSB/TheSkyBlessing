#> asset:object/example.2/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/65533/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {teleport_duration:1,billboard:"center",Tags:["ObjectInit"],item:{id:"minecraft:cake",Count:1b}}
