#> api:mob/apply_to_forward_target/with_non-idempotent.m
#
#
#
# @input args
#   Key: string
#   CB: id(minecraft:function)
#   IsForwardedOnly: boolean
# @api

# 対象が拡張された当たり判定でなければそのまま実行する
    $execute if entity @s[tag=!ExtendedCollision] run return run function api:mob/apply_to_forward_target/with_idempotent.m {CB:"$(CB)",IsForwardedOnly:$(IsForwardedOnly)}

# 初回の攻撃か判別する
    $data modify storage api: Args.Key set value "$(Key)"
    execute store result storage api: Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID
    execute store result storage api: IsInitialApply byte 1 run function api:mob/apply_to_forward_target/check_initial_apply.m with storage api: Args
    data remove storage api: Args
# 呼び出し
    $execute if data storage api: {IsInitialApply:true} run function api:mob/apply_to_forward_target/with_idempotent.m {CB:"$(CB)",IsForwardedOnly:$(IsForwardedOnly)}
# リセット
    data remove storage api: IsInitialApply
