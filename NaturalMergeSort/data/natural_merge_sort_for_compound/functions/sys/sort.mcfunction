### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/sort
# ナチュラルマージソートします。
# Sort by Natural Merge Sort.
# @within
#   natural_merge_sort_for_compound:*
# @input storage natural_merge_sort_for_compound: List
#   ソートする数値配列 / the int list to sort

data modify storage natural_merge_sort_for_compound: ListDesc set value []
scoreboard players set $Value2 Temporary -2147483648
execute if data storage lib: Array[0] run function natural_merge_sort_for_compound:sys/setup
function natural_merge_sort_for_compound:sys/ascend
