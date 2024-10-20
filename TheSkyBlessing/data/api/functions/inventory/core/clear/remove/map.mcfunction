#> api:inventory/core/clear/remove/map
# @within function
#   api:inventory/core/clear/remove/
#   api:inventory/core/clear/remove/map

# 末尾データを新しいインベントリに追加する
    data modify storage api: Argument.Inventory append from storage lib: Array[-1]
# Count削除
    data remove storage lib: Array[-1].Count
    data remove storage lib: Array[-1].Slot
# 比較
    execute store success score $notEqual Temporary run data modify storage lib: Array[-1] set from storage api: Argument.Target
# 同アイテムの場合はそれぞれの個数を書き換える
    execute if score $notEqual Temporary matches 0 run function api:inventory/core/clear/remove/subtract_values
# 末尾データ削除
    data remove storage lib: Array[-1]
# リセット
    scoreboard players reset $notEqual Temporary
# まだアイテムがある場合は再帰
    execute if score $Amount Temporary matches ..0 if data storage lib: Array[0] run function lib:array/reverse
    execute if score $Amount Temporary matches ..0 if data storage lib: Array[0] run data modify storage api: Argument.Inventory append from storage lib: Array[]
    execute if score $Amount Temporary matches 1.. if data storage lib: Array[0] run function api:inventory/core/clear/remove/map
