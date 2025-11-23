#> lib:array/mask_inverted
#
# 対象配列の要素iについてマスク配列の要素iが**falseである場合**はMaskElementに置換した配列を返します。
#
# Array, Masksの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage lib: Array: [T] @ N
#   対象配列
#   storage lib: Masks: [boolean | { _: { _: boolean } }] @ N
#   マスク配列
#   storage lib: MaskElement: T | null
#   マスク後の要素 / 未指定の場合、マスクされた要素は削除されます。
# @output
#   storage lib: Array: [T] @ ..N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage lib: CopiedArray set from storage lib: Array
    data modify storage lib: Array set value []

# 再帰的に動かす
    execute if data storage lib: CopiedArray[0] if data storage lib: Masks[0] run function lib:array/core/mask_inverted

# 結果を反転
    function lib:array/reverse

# リセット
    data remove storage lib: Mask
    data remove storage lib: Masks
    data remove storage lib: MaskElement
    data remove storage lib: CopiedArray