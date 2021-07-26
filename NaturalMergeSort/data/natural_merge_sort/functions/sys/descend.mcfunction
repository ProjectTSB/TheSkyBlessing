### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:sys/descend
# 降順を保つようにマージする。
# Merge in descending order.
# @within
#   natural_merge_sort:descend
#   natural_merge_sort:sys/ascend
#   natural_merge_sort:sys/sort

execute store result score $Value1 Temporary run data get storage natural_merge_sort: ListAsc[-1][-1]
execute store result score $Value2 Temporary run data get storage natural_merge_sort: ListAsc[-2][-1]
execute unless data storage natural_merge_sort: ListAsc[-2][-1] run scoreboard players set $Value2 Temporary -2147483648
data modify storage natural_merge_sort: ListDesc set value [[]]
function natural_merge_sort:sys/descend/loop
execute if data storage natural_merge_sort: ListDesc[1] run function natural_merge_sort:sys/ascend
