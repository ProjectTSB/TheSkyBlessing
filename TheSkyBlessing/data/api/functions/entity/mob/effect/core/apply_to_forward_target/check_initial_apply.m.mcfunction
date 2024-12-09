#> api:entity/mob/effect/core/apply_to_forward_target/check_initial_apply.m
#
#
#
# @input args
#   ID: int
# @output result isPushed
# @within function api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m

$return run data modify storage api: ApplyForwardTargetSet.$(ID) set value true
