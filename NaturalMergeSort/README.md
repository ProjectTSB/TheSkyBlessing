# NaturalMergeSort
Efficient Sort of Integer Lists in Minecraft JE 1.16+  
整数リストの動作の軽いソート

# 使い方/How To Use

```mcfunction
data modify storage natural_merge_sort: List set value [3,8,1,2,10,5,6,2,9,1,5,4,7]  
function natural_merge_sort:ascend  
data get storage natural_merge_sort: List  
# => [1, 1, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]  

function natural_merge_sort:descend  
data get storage natural_merge_sort: List  
# => [10, 9, 8, 7, 6, 5, 5, 4, 3, 2, 2, 1, 1]
```

# 連絡はこちら/Contact

https://twitter.com/AiAkaishi

# ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
