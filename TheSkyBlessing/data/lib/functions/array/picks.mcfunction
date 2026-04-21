#> lib:array/picks
#
# 指定された配列の要素を抜き出します。
#
# @input storage lib:
#   T extends any
#   Array: [T] @ N
#   配列データ
#   Picks: [int] @ M
#   抜き取る要素の添字の配列
# @output storage lib:
#   Array: [T] @ (N - M)..
#   要素が抜き取られた配列
#   Elements: [T] @ ..M
#   抜き取られた要素
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage lib: Elements
# 添字配列をソートする
    # 配列を入れ替える
        data modify storage lib: ArrayTemp set from storage lib: Array
        data modify storage lib: Array set from storage lib: Picks
    # ソート
        function lib:array/sort/int/ascend
    # 配列を元に戻す
        data modify storage lib: Picks set from storage lib: Array
        data modify storage lib: Array set from storage lib: ArrayTemp
# 事前処理としてPicks配列に配列のサイズと同じ添字を突っ込む // どうせ内部処理で-1されるので配列サイズと同じで良い
    data modify storage lib: Picks append value -1
    execute store result storage lib: Picks[-1] int 1 if data storage lib: Array[]
# 再帰的に抜き取る
    function lib:array/core/picks
# Cacheを戻す
    function lib:array/revert
# Elementsの順番を反転させる
    # 配列を入れ替える
        data modify storage lib: ArrayTemp set from storage lib: Array
        data modify storage lib: Array set from storage lib: Elements
    # 反転させる
        function lib:array/reverse
    # 配列を元に戻す
        data modify storage lib: Elements set from storage lib: Array
        data modify storage lib: Array set from storage lib: ArrayTemp
# リセット
    data remove storage lib: Picks
    data remove storage lib: ArrayTemp
    scoreboard players reset $Prev Temporary
    scoreboard players reset $Cur Temporary
    scoreboard players reset $ListSize Temporary
