#> api:mob/core/deal_dummy_damage/player.m
#
#
#
# @input args AttackerID: int
# @within function api:mob/deal_dummy_damage

$tag @p[scores={UserID=$(AttackerID)}] add AttackedByApi
$damage @s 0 player_attack by @p[scores={UserID=$(AttackerID)}]
$tag @p[scores={UserID=$(AttackerID)}] remove AttackedByApi
