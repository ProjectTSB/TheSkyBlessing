#> player_manager:play_equip_sound/validate
#
# 装着音を鳴らすべき変更であった場合、装着音を鳴らします。
#
# @within function player_manager:play_equip_sound/validate_all_slots

# 脱いだ場合は無視
    execute unless data storage player_manager:equip_sound Item.New.id run return fail

# 音を鳴らさない神器の場合は無視
    execute if data storage player_manager:equip_sound Item.New.tag.TSB.DisabledFlag.Use{EquipSound:true} run return fail

# 神器UUIDが同一だった場合は無視。神器でない場合は常に成功。
# Item.Oldはここで汚染
    execute store success storage player_manager:equip_sound Result byte 1 run data modify storage player_manager:equip_sound Item.Old.tag.TSB.UUID set from storage player_manager:equip_sound Item.New.tag.TSB.UUID
    execute unless data storage player_manager:equip_sound Item.New.tag.TSB.UUID run data modify storage player_manager:equip_sound Result set value 1b
    execute if data storage player_manager:equip_sound {Result:0b} run return fail

# 鳴らす
    function player_manager:play_equip_sound/play

# リセット
    data remove storage player_manager:equip_sound Result
