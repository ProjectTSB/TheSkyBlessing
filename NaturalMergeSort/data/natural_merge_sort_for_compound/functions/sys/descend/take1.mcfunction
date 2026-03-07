### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/descend/take1
# @within
#   natural_merge_sort_for_compound:sys/descend/loop

data modify storage natural_merge_sort_for_compound: ListDesc[-1] append from storage natural_merge_sort_for_compound: ListAsc[-1][-1]
data remove storage natural_merge_sort_for_compound: ListAsc[-1][-1]
execute store result score $Value1 Temporary run data get storage natural_merge_sort_for_compound: ListAsc[-1][-1].weight
execute unless data storage natural_merge_sort_for_compound: ListAsc[-1][-1] run scoreboard players set $Value1 Temporary -2147483648
