#> asset_manager:teleporter/register/
#
#
#
# @within function asset:teleporter/common/register

# ベースエンティティを設定する
    summon item_display ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.281f,-0.363f,-0.117f,0.881f],translation:[0f,0.001f,0f],scale:[1f,1f,0f]},item:{},brightness:{sky:15,block:15},Rotation:[0f,-90f],teleport_duration:1}
# データ取得
    execute as @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] run function oh_my_dat:please
# 直接入れるやつ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ID set from storage asset:teleporter ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupIDs set from storage asset:teleporter GroupIDs
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set from storage asset:teleporter ActivationState
# グループ側に入れるやつ
    data modify storage asset:teleporter Teleporters append value {}
    data modify storage asset:teleporter Teleporters[-1].ID set from storage asset:teleporter ID
    data modify storage asset:teleporter Teleporters[-1].GroupIDs set from storage asset:teleporter GroupIDs
    data modify storage asset:teleporter Teleporters[-1].Data.ActivationState set from storage asset:teleporter ActivationState
    execute if data storage asset:teleporter Color run function asset_manager:teleporter/register/calculate_and_insert_color_data
    data modify storage asset:teleporter Teleporters[-1].Dimension set from storage asset:teleporter Dimension
    data modify storage asset:teleporter Teleporters[-1].Pos set from entity @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] Pos
# 参照情報を保存する
    data modify storage asset:teleporter TeleporterOMDMap append value {}
    data modify storage asset:teleporter TeleporterOMDMap[-1].TeleporterID set from storage asset:teleporter ID
    execute store result storage asset:teleporter TeleporterOMDMap[-1].OhMyDatID int 1 run scoreboard players get @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] OhMyDatID
# 状態を item_display に反映させる
    execute as @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] run function asset_manager:teleporter/common/update_display_state
