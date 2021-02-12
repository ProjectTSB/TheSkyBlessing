#> mob_manager:find_attacking_entity/add_tag/2
#
# 進捗達成時のtagを付与します
#
# @within advancement mob_manager:find_attacking_entity/2

tag @s add HasFlag2
advancement revoke @s only mob_manager:find_attacking_entity/2