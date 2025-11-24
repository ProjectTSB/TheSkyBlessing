### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:sys/descend/shift
# @within
#   natural_merge_sort:sys/descend/loop

data remove storage natural_merge_sort: ListAsc[-1]
data remove storage natural_merge_sort: ListAsc[-1]
execute if data storage natural_merge_sort: ListAsc[-1][-1] store result score $Value1 Temporary run data get storage natural_merge_sort: ListAsc[-1][-1]
execute if data storage natural_merge_sort: ListAsc[-2][-1] store result score $Value2 Temporary run data get storage natural_merge_sort: ListAsc[-2][-1]
execute if data storage natural_merge_sort: ListAsc[0] run data modify storage natural_merge_sort: ListDesc append value []
