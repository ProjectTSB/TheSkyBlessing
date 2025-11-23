#> lib:array/sort_ascend
#
# 配列の要素を昇順ソートします。
#
# @input
#   storage lib: Array: [int] @ N
#   配列データ
# @output
#   storage lib: Array: [int] @ N
#   昇順にソートされた配列データ
# @public


# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 実際ただのエイリアスである。
    function natural_merge_sort:ascend