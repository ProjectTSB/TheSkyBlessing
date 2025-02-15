#> mob_manager:processing_tag/remove
#
#
#
# @within function mob_manager:processing_tag/

# ドロップ無くす
    data modify entity @s DeathLootTable set value "empty"
# さよなら～
    tp @s ~ -300 ~
    kill @s
