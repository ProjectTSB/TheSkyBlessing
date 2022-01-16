#> lib:array/core/picks
#
# 配列の要素を再帰的に抜き取る
#
# @within function
#   lib:array/picks
#   lib:array/core/picks

# 前の添字と今の添字を取得する
    execute store result score $Index Temporary run data get storage lib: Picks[-1]
    execute store result score $Cur Temporary run data get storage lib: Picks[-2]
# 前の添字を削除する
    data remove storage lib: Picks[-1]
# 前の添字と今の添字から動かすべき距離を算出する
    scoreboard players operation $Index Temporary -= $Cur Temporary
    scoreboard players remove $Index Temporary 1
# その分だけ動かす
    execute if score $Index Temporary matches 1.. run function lib:array/core/move
# 最後の要素をElementsに移す
    execute if score $Index Temporary matches 0.. run data modify storage lib: Elements append from storage lib: Array[-1]
    execute if score $Index Temporary matches 0.. run data remove storage lib: Array[-1]
# 添字が二つ以上残ってるなら繰り返す
    execute if data storage lib: Picks[-2] run function lib:array/core/picks