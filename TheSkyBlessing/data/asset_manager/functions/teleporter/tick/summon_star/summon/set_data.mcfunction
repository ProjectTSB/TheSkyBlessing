#> asset_manager:teleporter/tick/summon_star/summon/set_data
#
#
#
# @within function asset_manager:teleporter/tick/summon_star/summon/as_common_marker

# ユーザーIDをコピー
    scoreboard players operation @s TPStarFromUserID = @p[tag=this] UserID
# ディメンション取得
    execute as @p[tag=this] run function api:data_get/dimension
# EntityStorage 取得
    function oh_my_dat:please
# 座標データ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos.X set from storage asset:teleporter TargetTeleporter.Data.Pos[0]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos.Y set from storage asset:teleporter TargetTeleporter.Data.Pos[1]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos.Z set from storage asset:teleporter TargetTeleporter.Data.Pos[2]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos.Dimension set from storage asset:teleporter TargetTeleporter.Data.Dimension
# 有効化されているならタグ付与
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} run tag @s add TPStar.Active
# 有効化されているならサイズ大きく
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} run data modify entity @s transformation.scale set value [0.25f,0.25f,0.0f]
# ディメンション確認
    data modify storage asset:teleporter TempDimension set from storage api: Dimension
    execute store result storage asset:teleporter IsOtherDimension byte 1 run data modify storage asset:teleporter TempDimension set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos.Dimension
# 色データ
    # execute unless data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} run data modify entity @s item.tag.display.color set value 16777215
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:overworld" } run data modify entity @s item.tag.display.color set value 24576
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:the_nether"} run data modify entity @s item.tag.display.color set value 6291456
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:the_end"   } run data modify entity @s item.tag.display.color set value 6291552
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension:false} unless data storage asset:teleporter TargetTeleporter.Data.Color run data modify entity @s item.tag.display.color set value 10526784
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension:false} if data storage asset:teleporter TargetTeleporter.Data.Color run data modify entity @s item.tag.display.color set from storage asset:teleporter TargetTeleporter.Data.Color
# EntityStorage に点滅用に色を保存しておく
    execute unless data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set value [255,255,255]
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:overworld" } run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set value [0,96,0]
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:the_nether"} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set value [96,0,0]
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension: true} if data storage asset:teleporter TargetTeleporter.Data{Dimension:"minecraft:the_end"   } run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set value [96,0,96]
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension:false} unless data storage asset:teleporter TargetTeleporter.Data.Color run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set value [160,160,64]
    execute if data storage asset:teleporter TargetTeleporter.Data{ActivationState:"Activate"} if data storage asset:teleporter {IsOtherDimension:false} if data storage asset:teleporter TargetTeleporter.Data.Color run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart set from storage asset:teleporter TargetTeleporter.Data.ColorPart
# 初期化タグ削除
    tag @s remove TPStarInit
# リセット
    data remove storage asset:teleporter TempDimension
    data remove storage asset:teleporter IsOtherDimension
