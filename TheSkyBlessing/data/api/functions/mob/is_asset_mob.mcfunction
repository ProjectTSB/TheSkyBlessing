#> api:mob/is_asset_mob
#
# AssetMob ならば true を返す
#
# @output success this is AssetMob
# @api

return run execute if entity @s[tag=AssetMob]
