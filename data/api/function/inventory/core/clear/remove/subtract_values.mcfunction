#> api:inventory/core/clear/remove/subtract_values
# @within function api:inventory/core/clear/remove/map

# 個数取得
    execute store result score $Count Temporary run data get storage api: Argument.Inventory[-1].Count
# アイテムの新しい個数をセット
    scoreboard players operation $NewCount Temporary = $Count Temporary
    scoreboard players operation $NewCount Temporary -= $Amount Temporary
    execute if score $NewCount Temporary matches ..-1 run scoreboard players set $NewCount Temporary 0
    execute store result storage api: Argument.Inventory[-1].Count byte 1 run scoreboard players get $NewCount Temporary
# 目標数を減算
    scoreboard players operation $Amount Temporary -= $Count Temporary
# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $NewCount Temporary
