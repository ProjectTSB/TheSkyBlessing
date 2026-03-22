#> player_manager:play_equip_sound/tick
#
# 装備装着時に音を鳴らします。
# （NBT更新時でも鳴ってしまうバニラの装着音を無効化しているため）
#
# @within function core:tick/player/

#> Private
# @within function player_manager:play_equip_sound/*
#declare storage player_manager:equip_sound

# 直前tickの装備アイテム取得
    function oh_my_dat:please
    data modify storage player_manager:equip_sound Old set value [{},{},{},{}]
    data modify storage player_manager:equip_sound Old set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LastEquipmentsForSound
# 現在の装備アイテム取得 耐久値変化は無視するので消しておく
    function api:data_get/inventory
    data modify storage player_manager:equip_sound New set value [{},{},{},{}]
    data modify storage player_manager:equip_sound New[0] set from storage api: Inventory[{Slot:100b}]
    data modify storage player_manager:equip_sound New[1] set from storage api: Inventory[{Slot:101b}]
    data modify storage player_manager:equip_sound New[2] set from storage api: Inventory[{Slot:102b}]
    data modify storage player_manager:equip_sound New[3] set from storage api: Inventory[{Slot:103b}]
    data remove storage player_manager:equip_sound New[].tag.Damage

# 装備アイテムを比較
    function lib:array/session/open
    data modify storage lib: ArrayA set from storage player_manager:equip_sound Old
    data modify storage lib: ArrayB set from storage player_manager:equip_sound New
    function lib:array/compare

# 装備アイテムに変化がある場合は各装備をチェック
    execute if data storage lib: {CompareResult:[{_:{_:false}}]} run function player_manager:play_equip_sound/validate_all_slots


# 現在の装備状況を次のtickへ持ち越し
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LastEquipmentsForSound set from storage player_manager:equip_sound New

# リセット
    function lib:array/session/close
    data remove storage player_manager:equip_sound Old
    data remove storage player_manager:equip_sound New
