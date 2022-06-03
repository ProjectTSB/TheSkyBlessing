#> asset_manager:teleporter/register/
#
#
#
# @within function asset:teleporter/common/register

# ベースエンティティを設定する
    summon marker ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"]}
# タグ設定
    execute if data storage asset:teleporter {ActivationKind:"Activate"} run tag @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] add TeleporterActivation
# データ取得
    execute as @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] run function oh_my_dat:please
# 直接入れるやつ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ID set from storage asset:teleporter ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID set from storage asset:teleporter GroupID
# グループ側に入れるやつ
    data modify storage asset:teleporter TeleporterGroups append value {}
    data modify storage asset:teleporter TeleporterGroups[-1].ID set from storage asset:teleporter ID
    data modify storage asset:teleporter TeleporterGroups[-1].GroupID set from storage asset:teleporter GroupID
    data modify storage asset:teleporter TeleporterGroups[-1].Data.ActivationKind set from storage asset:teleporter ActivationKind
    data modify storage asset:teleporter TeleporterGroups[-1].Data.Color set from storage asset:teleporter Color
    data modify storage asset:teleporter TeleporterGroups[-1].Pos set from entity @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] Pos