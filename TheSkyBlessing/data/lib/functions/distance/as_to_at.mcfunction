#> lib:distance/as_to_at
#
# 実行位置と実行者位置の距離を計測する
#
# @input
#   as entity position
#   at position
# @output storage
#   lib: Return.Distance : 実行位置と実行者位置の距離
# @api

# 実行者位置Pos取得
execute positioned as @s summon marker run function lib:distance/core/get_pos

# 実行位置と実行者位置の差分取得
execute rotated 180 -90 summon marker run function lib:distance/core/get_delta.m with storage lib: Distance.tmp

# ストレージ掃除
data remove storage lib: Distance
