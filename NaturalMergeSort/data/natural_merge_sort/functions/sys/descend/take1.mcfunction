### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:sys/descend/take1
# @within
#   natural_merge_sort:sys/descend/loop

data modify storage natural_merge_sort: ListDesc[-1] append from storage natural_merge_sort: ListAsc[-1][-1]
data remove storage natural_merge_sort: ListAsc[-1][-1]
execute store result score $Value1 Temporary run data get storage natural_merge_sort: ListAsc[-1][-1]
execute unless data storage natural_merge_sort: ListAsc[-1][-1] run scoreboard players set $Value1 Temporary -2147483648
