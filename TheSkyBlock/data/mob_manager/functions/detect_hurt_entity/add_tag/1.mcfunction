#> mob_manager:detect_hurt_entity/add_tag/1
#
# 進捗達成時のtagを付与します
#
# @within advancement mob_manager:detect_hurt_entity/1

tag @s add HasFlag-1
advancement revoke @s only mob_manager:detect_hurt_entity/1