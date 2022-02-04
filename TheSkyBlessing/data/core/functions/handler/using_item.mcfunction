#> core:handler/using_item
#
# アイテムを使用している最中に実行される
#
# @within function core:tick/player

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.UsingItem
    scoreboard players add @s UsingItem 1
    scoreboard players add @s UsingItem.MainH 1
    scoreboard players add @s UsingItem.OffH 1

# reset
    advancement revoke @s only core:handler/using_item