#> debug:entity_storage/set.m
# @input args
#   Path: string
#   Data: string(compound)
# @user
# @private

# EntityStorage取得
    function oh_my_dat:please
# merge
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].$(Path) set value $(Data)
