#> lib:has_empty_slot/block
#
# 実行位置のコンテナに空スロットがあるかどうかを調べます
# if functionにも使えます
#
# @output
#   storage lib: Return: 1b | 0b
# @api

#> 検証用アイテム
# @private
    #declare loot_table lib:has_empty_slot

execute store result storage lib: Return byte 1 run loot insert ~ ~ ~ loot lib:has_empty_slot
execute if data storage lib: {Return:1b} run data remove block ~ ~ ~ Items[{tag:{TSB:{ItemMetaData:["EmptySlotChecker"]}}}]
return run execute if data storage lib: {Return:1b}
