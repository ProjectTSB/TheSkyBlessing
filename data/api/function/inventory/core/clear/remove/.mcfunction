#> api:inventory/core/clear/remove/
# @within function api:inventory/clear

# 処理 (lib: Array -> api: Inventory)
    execute if data storage lib: Array[0] run function api:inventory/core/clear/remove/map

# インベントリ上書き
    function api:inventory/set
