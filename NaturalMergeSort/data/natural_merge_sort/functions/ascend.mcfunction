### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:ascend
# 渡された数値配列を、昇順にソートします。
# Sort the specified int list in ascending order.
# @api
# @input storage natural_merge_sort: List
#   ソートする数値配列 / the int list to sort

function natural_merge_sort:sys/sort
execute unless data storage natural_merge_sort: ListAsc[0] run function natural_merge_sort:sys/ascend
data modify storage lib: Array set from storage natural_merge_sort: ListAsc[0]
# リセット
    scoreboard players reset $Value1 Temporary
    scoreboard players reset $Value2 Temporary