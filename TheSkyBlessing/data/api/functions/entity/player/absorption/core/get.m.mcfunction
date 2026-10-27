#> api:entity/player/absorption/core/get.m
# @input args UUID: [int] @ 4
# @within function api:entity/player/absorption/get

# 実行者のOhMyDatから該当UUIDの緩衝体力を取得する
function oh_my_dat:please
data remove storage api: Return.Absorption
$data modify storage api: Return.Absorption set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}]
