### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:descend
# 渡された数値配列を、降順にソートします。
# Sort the specified int list in descending order.
# @api
# @input storage natural_merge_sort: List
#   ソートする数値配列 / the int list to sort

function natural_merge_sort_for_compound:sys/sort
execute unless data storage natural_merge_sort_for_compound: ListDesc[0] run function natural_merge_sort_for_compound:sys/descend
data modify storage lib: Array set from storage natural_merge_sort_for_compound: ListDesc[0]
# リセット
    scoreboard players reset $Value1 Temporary
    scoreboard players reset $Value2 Temporary
