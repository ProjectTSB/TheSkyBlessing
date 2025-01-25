#> metric:island
#
# 島の攻略順を記録する
#
# @within function asset_manager:island/dispel/successful

function api:global_vars/get_difficulty
data modify storage metric: Island.Order append value {}
data modify storage metric: Island.Order[-1].ID set from storage api: Argument.ID
data modify storage metric: Island.Order[-1].Difficulty set from storage api: Return.Difficulty
data modify storage metric: Island.Order[-1].Time set from storage global Time
