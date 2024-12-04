#> api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m
#
#
#
# @input args
#   CB: id(minecraft:function)
# @within function api:entity/mob/effect/**

# 初回の攻撃か判別する
    execute store result storage api: Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID
    execute store result storage api: IsInitialApply byte 1 run function api:entity/mob/effect/core/apply_to_forward_target/check_initial_apply.m with storage api: Args
    data remove storage api: Args
# 呼び出し
    $execute if data storage api: {IsInitialApply:true} run function api:entity/mob/effect/core/apply_to_forward_target/apply.m {CB:"$(CB)"}
# リセット
    data remove storage api: IsInitialApply
