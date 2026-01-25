### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/ascend
# 昇順を保つようにマージする。
# Merge in ascending order.
# @within
#   natural_merge_sort_for_compound:ascend
#   natural_merge_sort_for_compound:sys/descend
#   natural_merge_sort_for_compound:sys/sort

execute store result score $Value1 Temporary run data get storage natural_merge_sort_for_compound: ListDesc[-1][-1].weight
execute store result score $Value2 Temporary run data get storage natural_merge_sort_for_compound: ListDesc[-2][-1].weight
execute unless data storage natural_merge_sort_for_compound: ListDesc[-2][-1] run scoreboard players set $Value2 Temporary 2147483647
data modify storage natural_merge_sort_for_compound: ListAsc set value [[]]
function natural_merge_sort_for_compound:sys/ascend/loop
execute if data storage natural_merge_sort_for_compound: ListAsc[1] run function natural_merge_sort_for_compound:sys/descend
