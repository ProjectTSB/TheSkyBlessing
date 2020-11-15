#> mob_manager:detect_hurt_entity/add_tag/2
#
# 進捗達成時のtagを付与します
#
# @within advancement mob_manager:detect_hurt_entity/2

tag @s add HasFlag-2
advancement revoke @s only mob_manager:detect_hurt_entity/2