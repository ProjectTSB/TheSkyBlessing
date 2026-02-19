#> api:mob/apply_to_forward_target/check_initial_apply.m
#
#
#
# @input args
#   Key: string
#   ID: int
# @output result isPushed
# @within function api:mob/apply_to_forward_target/with_non-idempotent.m

$return run data modify storage api: ApplyForwardTargetSet."$(Key)".$(ID) set value true
