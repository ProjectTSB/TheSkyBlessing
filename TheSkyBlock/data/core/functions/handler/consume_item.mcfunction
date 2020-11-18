#> core:handler/consume_item
#
# アイテムの使用時に実行
#
# @within function core:tick

# asset_managerへの引継ぎ
    function asset_manager:sacred_treasure/triggers/use_item

# Reset
    advancement revoke @s only core:handler/consume_item