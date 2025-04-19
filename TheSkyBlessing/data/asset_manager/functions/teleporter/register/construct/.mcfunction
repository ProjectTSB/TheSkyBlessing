#> asset_manager:teleporter/register/construct/
# @within function world_manager:nexus_loader/try_load_asset/construct.m

# ベースエンティティを設定する
    summon item_display ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.281f,-0.363f,-0.117f,0.881f],translation:[0f,0f,0.001f],scale:[1f,1f,0f]},item:{},brightness:{sky:15,block:15},Rotation:[0f,-90f],teleport_duration:1}
# データ取得
    execute as @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] run function oh_my_dat:please
# 直接入れるやつ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ID set from storage asset:teleporter ID
# グループ側に入れるやつ
    function asset_manager:teleporter/common/append_or_reorder_teleporters.m with storage asset:teleporter {}
# 状態を item_display に反映させる
    execute as @e[type=item_display,tag=Teleporter,distance=..0.01,limit=1] run function asset_manager:teleporter/common/update_display_state

return 1
