#> api:mob/lore/get
#
# モブに設定されたLoreを取得する
#
# @input as entity
# @output storage api: Return.Lore
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/lore/get",IsForwardedOnly:true}
