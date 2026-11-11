#> api:entity/player/absorption/core/get.m
# @input args UUID: [int] @ 4
# @within function api:entity/player/absorption/get

# EntityStorage
    function oh_my_dat:please

# 事前リセット
    data remove storage api: Return.Absorption

# 取得
    $data modify storage api: Return.Absorption set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}]
