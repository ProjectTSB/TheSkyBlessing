### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/descend/loop
# @within
#   natural_merge_sort_for_compound:sys/descend
#   natural_merge_sort_for_compound:sys/descend/loop

execute if score $Value1 Temporary >= $Value2 Temporary run function natural_merge_sort_for_compound:sys/descend/take1
execute if score $Value2 Temporary >= $Value1 Temporary run function natural_merge_sort_for_compound:sys/descend/take2
execute unless data storage natural_merge_sort_for_compound: ListAsc[-1][-1] unless data storage natural_merge_sort_for_compound: ListAsc[-2][-1] run function natural_merge_sort_for_compound:sys/descend/shift
execute if data storage natural_merge_sort_for_compound: ListAsc[0] run function natural_merge_sort_for_compound:sys/descend/loop
