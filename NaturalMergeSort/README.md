# NaturalMergeSort
Efficient Sort of Integer Lists in Minecraft JE 1.16+  
整数リストの動作の軽いソート

# 使い方/How To Use

```mcfunction
## For Integer List
## Any type of integer is OK
data modify storage natural_merge_sort: List set value [3,8,1,2,10,5,6,2,9,1,5,4,7]  
function #natural_merge_sort:ascend  
data get storage natural_merge_sort: List  
# => [1, 1, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]  

function #natural_merge_sort:descend  
data get storage natural_merge_sort: List  
# => [10, 9, 8, 7, 6, 5, 5, 4, 3, 2, 2, 1, 1]


## For Compound List
## Compound needs to have weight.
data modify storage natural_merge_sort: List set value [{weight:3,value:"three"},{weight:8,value:"eight"},{weight:1,value:"one"},{weight:2,value:"two"},{weight:10,value:"ten"},{weight:5,value:"five"},{weight:6,value:"six"},{weight:2,value:"two"},{weight:9,value:"nine"},{weight:1,value:"one"},{weight:5,value:"five"},{weight:4,value:"four"},{weight:7,value:"seven"}]  
function #natural_merge_sort:ascend  
data get storage natural_merge_sort: List  
# => [{weight: 1, value: "one"}, {weight: 1, value: "one"}, {weight: 2, value: "two"}, {weight: 2, value: "two"}, {weight: 3, value: "three"}, {weight: 4, value: "four"}, {weight: 5, value: "five"}, {weight: 5, value: "five"}, {weight: 6, value: "six"}, {weight: 7, value: "seven"}, {weight: 8, value: "eight"}, {weight: 9, value: "nine"}, {weight: 10, value: "ten"}]  

function #natural_merge_sort:descend  
data get storage natural_merge_sort: List  
# => [{weight: 10, value: "ten"}, {weight: 9, value: "nine"}, {weight: 8, value: "eight"}, {weight: 7, value: "seven"}, {weight: 6, value: "six"}, {weight: 5, value: "five"}, {weight: 5, value: "five"}, {weight: 4, value: "four"}, {weight: 3, value: "three"}, {weight: 2, value: "two"}, {weight: 2, value: "two"}, {weight: 1, value: "one"}, {weight: 1, value: "one"}]
```

# 連絡はこちら/Contact

https://twitter.com/AiAkaishi

# ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
