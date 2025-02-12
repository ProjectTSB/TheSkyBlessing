#> mob_manager:processing_tag/remove
#
#
#
# @within function mob_manager:processing_tag/

# Deathトリガー防止
    data modify entity @s DeathLootTable set value "empty"
# さよなら～
    tp @s ~ -300 ~
    kill @s
