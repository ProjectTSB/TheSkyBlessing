#> api:damage/core/modify/non-player_manual
#
#
#
# @within function api:damage/modifier_manual

# 攻撃者情報の記録
    execute store result score $LatestModifiedEntity MobUUID run data get storage api: Argument.MobUUID
