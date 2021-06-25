### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:sys/ascend
# 昇順を保つようにマージする。
# Merge in ascending order.
# @within
#   natural_merge_sort:ascend
#   natural_merge_sort:sys/descend
#   natural_merge_sort:sys/sort

execute store result score $Value1 Temporary run data get storage natural_merge_sort: ListDesc[-1][-1]
execute store result score $Value2 Temporary run data get storage natural_merge_sort: ListDesc[-2][-1]
execute unless data storage natural_merge_sort: ListDesc[-2][-1] run scoreboard players set $Value2 Temporary 2147483647
data modify storage natural_merge_sort: ListAsc set value [[]]
function natural_merge_sort:sys/ascend/loop
execute if data storage natural_merge_sort: ListAsc[1] run function natural_merge_sort:sys/descend
