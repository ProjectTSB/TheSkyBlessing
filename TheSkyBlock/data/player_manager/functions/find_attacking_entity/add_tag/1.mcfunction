#> player_manager:find_attacking_entity/add_tag/1
#
# 進捗達成時のtagを付与します
#
# @within advancement player_manager:find_attacking_entity/1

tag @s add HasFlag1
advancement revoke @s only player_manager:find_attacking_entity/1