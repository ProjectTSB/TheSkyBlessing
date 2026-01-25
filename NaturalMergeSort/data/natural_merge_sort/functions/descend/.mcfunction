### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:descend/  
# 渡された数値配列を、昇順にソートします。  
# Sort the specified int list in descending order.
# @api
# @input storage natural_merge_sort: List
#   ソートする数値配列 / the int list to sort

#define storage natural_merge_sort:

## compound(でweight持ち)なら
execute if data storage natural_merge_sort: List[0].weight run function natural_merge_sort_for_compound:descend
## それ以外はリストとして
execute unless data storage natural_merge_sort: List[0].weight run function natural_merge_sort:descend
