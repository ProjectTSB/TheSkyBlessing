### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/setup
# ソートする配列をListDescに設定します。
# Set the list to sort to ListDesc.
# @within
#   natural_merge_sort_for_compound:sys/setup
#   natural_merge_sort_for_compound:sys/sort

execute store result score $Value1 Temporary run data get storage lib: Array[-1].weight
execute if score $Value2 Temporary < $Value1 Temporary run data modify storage natural_merge_sort_for_compound: ListDesc append value []
data modify storage natural_merge_sort_for_compound: ListDesc[-1] append from storage lib: Array[-1]
scoreboard players operation $Value2 Temporary = $Value1 Temporary
data remove storage lib: Array[-1]
execute if data storage lib: Array[0] run function natural_merge_sort_for_compound:sys/setup
