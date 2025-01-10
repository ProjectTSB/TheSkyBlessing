#> asset_manager:test/register/
# @within function world_manager:nexus_loader/try_load_asset.m

#> Private
# @private
#declare storage asset:test

tellraw @a [{"text":"Load: "},{"storage":"asset:test","nbt":"ID"}]

return 1
