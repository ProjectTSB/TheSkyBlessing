#> lib:array/sort/compound/ascend
#
# Compund型の配列の要素を昇順ソートします。
#
# @input
#   storage lib: Array: [Compound] @ N
#    - 各要素は weightキーを持つ必要があります
#   配列データ
# @output
#   storage lib: Array: [Compound] @ N
#   昇順にソートされた配列データ
# @public


# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# NaturalMergeSort呼び出し
    function natural_merge_sort_for_compound:ascend
