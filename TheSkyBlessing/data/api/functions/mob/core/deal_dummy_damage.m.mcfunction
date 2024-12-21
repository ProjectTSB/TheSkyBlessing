#> api:mob/core/deal_dummy_damage.m
#
#
#
# @input args
#   Attacker: string
# @within function api:mob/deal_dummy_damage

$tag $(Attacker) add AttackedByApi
$damage @s 0 player_attack by $(Attacker)
$tag $(Attacker) remove AttackedByApi
