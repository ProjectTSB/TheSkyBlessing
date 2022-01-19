#> lib:damage/core/save_death_message
#
# EntityStorageにDeathMessageを保存します
#
# @within function lib:damage/

# EntityStorage呼び出し
    function oh_my_dat:please
# 保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathMessage set from storage lib: Argument.DeathMessage