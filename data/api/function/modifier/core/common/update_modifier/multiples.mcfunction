#> api:modifier/core/common/update_modifier/multiples
#
#
#
# @within function
#   api:modifier/core/common/update_modifier/
#   api:modifier/core/common/update_modifier/multiples

#> Temp
# @private
    #declare score_holder $Multiply

# Multiply値を取得
    execute store result score $Multiply Temporary run data get storage api: Multiples[-1] 1000
# ベース分1.0追加
    scoreboard players add $Multiply Temporary 1000
# 乗算する
    scoreboard players operation $Modifier Temporary *= $Multiply Temporary
    scoreboard players operation $Modifier Temporary /= $1000 Const
# 最後の要素を削除する
    data remove storage api: Multiples[-1]
# リセット
    scoreboard players reset $Multiply Temporary
# 要素がまだあったら再帰する
    execute if data storage api: Multiples[0] run function api:modifier/core/common/update_modifier/multiples