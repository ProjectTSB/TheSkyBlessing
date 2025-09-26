#> api:entity/player/absorption/calc_amount
#
# プレイヤーの緩衝体力の総量を取得します
#
# @input
#   as player
#
#
# @api

# 事前リセット
    data remove storage api: Return.Absorption.Amount

# セッション開ける
    function lib:array/session/open

# Amountの合計を算出
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[].Amount
    function lib:array/math/sum

# 返す
    data modify storage api: Return.Absorption.Amount set from storage lib: SumResult

# セッション閉じる
    function lib:array/session/close
