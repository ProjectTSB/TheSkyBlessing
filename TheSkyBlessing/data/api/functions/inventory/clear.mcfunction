#> api:inventory/clear
#
# 実行者のインベントリから引数と等価なアイテムの個数チェックおよび削除をします
#
# @input
#   as player
#   storage api:
#       Argument.Target: Item(Count will be ignored)
#       Argument.Amount?: int
# @output score $Return.Amount Lib : if Argument.Amount == 0
# @api

# インベントリの取得
    function api:data_get/inventory
# 引数の修正
    data remove storage api: Argument.Target.Slot
    data remove storage api: Argument.Target.Count
    execute unless data storage api: Argument.Amount run data modify storage api: Argument.Amount set value 8192
# 削除個数の取得
    execute store result score $Amount Temporary run data get storage api: Argument.Amount
# セッション開ける
    function lib:array/session/open
# インベントリを反転する
    data modify storage lib: Array set from storage api: Inventory
    function lib:array/reverse
# インベントリのチェック
    execute if score $Amount Temporary matches 0 run function api:inventory/core/clear/test/
    execute if score $Amount Temporary matches 1.. run function api:inventory/core/clear/remove/
# リセット
    function lib:array/session/close
    data remove storage api: Argument
    scoreboard players reset $Amount Temporary
