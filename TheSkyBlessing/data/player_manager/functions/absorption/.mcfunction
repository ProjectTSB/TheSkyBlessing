#> player_manager:absorption/
#
# actionbarの緩衝体力表示
#
# @within function core:tick/player/

# セッション開く
    function lib:array/session/open

# EntityStorage 呼び出し
    function oh_my_dat:please
# Absorptions[].Amount の総和を計算する
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[].Amount
    function lib:array/math/sum
# 金ハートに反映する
    function player_manager:absorption/set.m with storage lib: {}

# セッション閉じる
function lib:array/session/close
