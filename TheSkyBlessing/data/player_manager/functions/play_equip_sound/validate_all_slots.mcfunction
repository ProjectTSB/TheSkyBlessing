#> player_manager:play_equip_sound/validate_all_slots
#
# 各スロットの変更が装着音を鳴らすべき変更なのかどうかを確認します。
#
# @within function player_manager:play_equip_sound/tick


# 更新があったスロットにチェック処理
# 足
    data modify storage player_manager:equip_sound Item.Old set from storage player_manager:equip_sound Old[0]
    data modify storage player_manager:equip_sound Item.New set from storage player_manager:equip_sound New[0]
    execute if data storage lib: CompareResult[0]._{_:false} run function player_manager:play_equip_sound/validate
# 脚
    data modify storage player_manager:equip_sound Item.Old set from storage player_manager:equip_sound Old[1]
    data modify storage player_manager:equip_sound Item.New set from storage player_manager:equip_sound New[1]
    execute if data storage lib: CompareResult[1]._{_:false} run function player_manager:play_equip_sound/validate
# 胸
    data modify storage player_manager:equip_sound Item.Old set from storage player_manager:equip_sound Old[2]
    data modify storage player_manager:equip_sound Item.New set from storage player_manager:equip_sound New[2]
    execute if data storage lib: CompareResult[2]._{_:false} run function player_manager:play_equip_sound/validate
# 頭
    data modify storage player_manager:equip_sound Item.Old set from storage player_manager:equip_sound Old[3]
    data modify storage player_manager:equip_sound Item.New set from storage player_manager:equip_sound New[3]
    execute if data storage lib: CompareResult[3]._{_:false} run function player_manager:play_equip_sound/validate


# リセット
    data remove storage player_manager:equip_sound Item
