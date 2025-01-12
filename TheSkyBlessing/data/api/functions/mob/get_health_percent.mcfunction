#> api:mob/get_health_percent
#
# 実行Mobの現在体力を0～1の割合で取得します
#
# @output storage api: Return.HealthPer : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/get_health_percent",IsForwardedOnly:true}
