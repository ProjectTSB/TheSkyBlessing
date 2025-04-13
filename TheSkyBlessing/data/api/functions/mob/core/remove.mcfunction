#> api:mob/core/remove
#
#
#
# @within function api:mob/remove*

# タグを付与
    tag @s add Death
    execute if function api:mob/is_asset_mob run tag @s add RemovingAssetEntity
    execute unless function api:mob/is_asset_mob run tag @s add RemovingEntity
