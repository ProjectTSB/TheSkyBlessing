#> api:entity/mob/effect/reset
#
#
#
# @api

# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Duration
    data remove storage api: Argument.Stack
    data remove storage api: Argument.DurationOperation
    data remove storage api: Argument.StackOperation
    data remove storage api: Argument.FieldOverride
    data remove storage api: Argument.ClearLv
    data remove storage api: Argument.ClearType
    data remove storage api: Argument.IsSingle
    data remove storage api: Argument.ClearCount

    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"api:entity/mob/effect/give"}
    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"api:entity/mob/effect/remove/from_id"}
    function api:mob/apply_to_forward_target/reset_initial_apply.m {Key:"api:entity/mob/effect/remove/from_level"}
