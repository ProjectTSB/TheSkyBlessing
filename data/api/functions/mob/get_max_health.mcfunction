#> api:mob/get_max_health
#
# 実行MobのHP最大値を取得します
#
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/get_max_health",IsForwardedOnly:true}
return run data get storage api: Return.MaxHealth
