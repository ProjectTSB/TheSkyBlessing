#> api:damage/core/attack_to_forward_target/check_initial_attack.m
#
#
#
# @input args
#   ID: int
# @output result isPushed
# @within function api:damage/core/attack_to_forward_target/

$return run data modify storage api: AttackForwardTargetSet.$(ID) set value true
