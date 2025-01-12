#> api:mob/get_health
#
# 実行Mobの現在体力を取得します
#
# @output storage api: Return.Health : float
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/get_health",IsForwardedOnly:true}
