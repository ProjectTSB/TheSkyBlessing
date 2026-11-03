#> asset_manager:artifact/cache/rebuild/foreach
# @within function
#   asset_manager:artifact/cache/rebuild/
#   asset_manager:artifact/cache/rebuild/foreach

# 先頭の ID の宣言を足す
    data modify storage asset:artifact CacheTarget.ID set from storage asset:artifact CacheTargets[0]
    function asset_manager:artifact/cache/rebuild/add.m with storage asset:artifact CacheTarget

# loop
    data remove storage asset:artifact CacheTargets[0]
    execute if data storage asset:artifact CacheTargets[0] run function asset_manager:artifact/cache/rebuild/foreach
