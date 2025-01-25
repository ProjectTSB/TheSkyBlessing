#> debug:entity_storage/show.m
# @input args
#   Path: string
# @user
# @private

# EntityStorage取得
    function oh_my_dat:please
# 表示
    $tellraw @a [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].$(Path)"}]
