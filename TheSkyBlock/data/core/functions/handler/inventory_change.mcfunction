#> core:handler/inventory_change
#
# インベントリに変更があったときにトリガーされる
#
# @within function core:tick

# スニークタイムのリセット処理
    execute if score @s Sneak matches 1.. run tag @s add OnInventoryChanged

# Reset
    advancement revoke @s only core:handler/inventory_change