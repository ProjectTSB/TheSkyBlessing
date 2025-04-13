#> api:damage/core/health_subtract/non-player/for_health_entity
#
#
#
# @within function api:damage/core/health_subtract/non-player/

# 代入
    scoreboard players operation @s MobHealth = $Health Temporary

# 死んでるならタグ付与 (Kill は AssetMob の場合 Death トリガーをもとに付けるのでここでは付けない)
    execute if score $Health Temporary matches ..0 run tag @s add Death
    execute if score $Health Temporary matches ..0 unless function api:mob/is_asset_mob run tag @s add Kill
