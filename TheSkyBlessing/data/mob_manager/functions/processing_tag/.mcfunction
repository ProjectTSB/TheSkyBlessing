#> mob_manager:processing_tag/
#
#
#
# @within function core:tick/

execute if entity @s[tag=Kill] run function mob_manager:processing_tag/kill_entity
execute if entity @s[tag=AllowProcessingCommonTag] run function mob_manager:processing_tag/common_tag/
