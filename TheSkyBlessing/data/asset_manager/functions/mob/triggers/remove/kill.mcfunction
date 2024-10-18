#> asset_manager:mob/triggers/remove/kill
#
#
#
# @within function asset_manager:mob/triggers/

# Deathトリガー防止
    data modify entity @s DeathLootTable set value "empty"
# さよなら～
    tp @s ~ -300 ~
    kill @s
