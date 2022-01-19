#> api:inventory/core/clear/test/foreach
#
#
#
# @within function
#   api:inventory/core/clear/test/
#   api:inventory/core/clear/test/foreach

# Countを保存しておく
    execute store result score $Count Temporary run data get storage lib: Array[-1].Count
# Count削除
    data remove storage lib: Array[-1].Count
# 比較
    execute store success score $notEqual Temporary run data modify storage lib: Array[-1] set from storage api: Argument.Target
# 同アイテムの場合、
    execute if score $notEqual Temporary matches 0 run scoreboard players operation $Return.Amount Lib += $Count Temporary
# 末尾データ削除
    data remove storage lib: Array[-1]
# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $notEqual Temporary
# まだアイテムがある場合は再帰
    execute if data storage lib: Array[0] run function api:inventory/core/clear/test/foreach