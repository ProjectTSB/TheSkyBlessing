#> core:handler/using_item
#
# アイテムを使用している最中に実行される
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.UsingItem

# reset
    advancement revoke @s only core:handler/using_item