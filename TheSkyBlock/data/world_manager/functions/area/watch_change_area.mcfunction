#> world_manager:area/watch_change_area
#
# 信仰に関する処理をする
#
# @within function core:tick/player

execute if predicate world_manager:area/10.flora_temple unless score @s InArea matches 10 run function world_manager:area/10.flora_temple
execute if predicate world_manager:area/11.nyaptov_temple unless score @s InArea matches 11 run function world_manager:area/11.nyaptov_temple
execute if predicate world_manager:area/12.rumor_temple unless score @s InArea matches 12 run function world_manager:area/12.rumor_temple
execute if predicate world_manager:area/13.urban_temple unless score @s InArea matches 13 run function world_manager:area/13.urban_temple
execute if predicate world_manager:area/14.wi-ki_temple unless score @s InArea matches 14 run function world_manager:area/14.wi-ki_temple