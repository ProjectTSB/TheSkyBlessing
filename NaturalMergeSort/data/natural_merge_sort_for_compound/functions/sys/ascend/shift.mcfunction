### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/ascend/shift
# @within
#   natural_merge_sort_for_compound:sys/ascend/loop

data remove storage natural_merge_sort_for_compound: ListDesc[-1]
data remove storage natural_merge_sort_for_compound: ListDesc[-1]
execute if data storage natural_merge_sort_for_compound: ListDesc[-1][-1] store result score $Value1 Temporary run data get storage natural_merge_sort_for_compound: ListDesc[-1][-1].weight
execute if data storage natural_merge_sort_for_compound: ListDesc[-2][-1] store result score $Value2 Temporary run data get storage natural_merge_sort_for_compound: ListDesc[-2][-1].weight
execute if data storage natural_merge_sort_for_compound: ListDesc[0] run data modify storage natural_merge_sort_for_compound: ListAsc append value []
