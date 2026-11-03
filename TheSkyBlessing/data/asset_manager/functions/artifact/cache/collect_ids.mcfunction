#> asset_manager:artifact/cache/collect_ids
#
# offhand・防具・hotbar の神器の ID を、storage asset:artifact CacheIDs に集める
# mainhand は hotbar のどれかなので集めない
#
# @within function
#   asset_manager:artifact/cache/compare_ids
#   asset_manager:artifact/cache/rebuild/

# offhand・防具・hotbar の順に集める
    data modify storage asset:artifact CacheIDs set value []
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.offhand
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.head
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.chest
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.legs
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.feet
    data modify storage asset:artifact CacheIDs append from storage asset:context New.id.hotbar[]
