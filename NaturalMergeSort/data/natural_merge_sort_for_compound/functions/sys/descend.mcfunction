### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/descend
# 降順を保つようにマージする。
# Merge in descending order.
# @within
#   natural_merge_sort_for_compound:descend
#   natural_merge_sort_for_compound:sys/ascend
#   natural_merge_sort_for_compound:sys/sort

execute store result score $Value1 Temporary run data get storage natural_merge_sort_for_compound: ListAsc[-1][-1].weight
execute store result score $Value2 Temporary run data get storage natural_merge_sort_for_compound: ListAsc[-2][-1].weight
execute unless data storage natural_merge_sort_for_compound: ListAsc[-2][-1] run scoreboard players set $Value2 Temporary -2147483648
data modify storage natural_merge_sort_for_compound: ListDesc set value [[]]
function natural_merge_sort_for_compound:sys/descend/loop
execute if data storage natural_merge_sort_for_compound: ListDesc[1] run function natural_merge_sort_for_compound:sys/ascend
