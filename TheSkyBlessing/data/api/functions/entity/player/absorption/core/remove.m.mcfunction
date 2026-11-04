#> api:entity/player/absorption/core/remove.m
# @input args UUID: [int] @ 4
# @within function api:entity/player/absorption/remove

# 実行者のOhMyDatから該当UUIDの緩衝体力を削除する
function oh_my_dat:please
$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}]
