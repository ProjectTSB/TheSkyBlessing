#> mob_manager:find_attacking_entity/add_tag/0
#
# 進捗達成時のtagを付与します
#
# @within advancement mob_manager:find_attacking_entity/0

tag @s add HasFlag0
advancement revoke @s only mob_manager:find_attacking_entity/0