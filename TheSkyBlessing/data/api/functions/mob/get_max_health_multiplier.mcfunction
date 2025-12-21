#> api:mob/get_max_health_multiplier
#
# 実行MobのHP最大値補正倍率を取得します
#
# @input as @e[type=#lib:living_without_player]
# @output storage api: Return.MaxHealthMultiplier
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/get_max_health_multiplier",IsForwardedOnly:true}
