#> core:handler/consume_item
#
# アイテムの使用時に実行
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.UseItem
# Reset
    advancement revoke @s only core:handler/consume_item