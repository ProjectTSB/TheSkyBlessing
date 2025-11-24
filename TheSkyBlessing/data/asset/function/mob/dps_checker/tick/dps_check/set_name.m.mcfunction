#> asset:mob/dps_checker/tick/dps_check/set_name.m
# @within function asset:mob/dps_checker/tick/dps_check/*

$data modify entity @s CustomName set value [{"text":"DPS: $(DPS)","color": "$(Color)"}]
