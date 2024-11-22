#> asset_manager:teleporter/tick/star_init/set_data
#
#
#
# @within function asset_manager:teleporter/tick/star_init/summon

# ユーザーIDをコピー
    scoreboard players operation @s TPStarFromUserID = @p[tag=this] UserID
# ユーザーデータ取得
    function oh_my_dat:please
# 座標データ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos set from storage asset:teleporter TargetTeleporter.Pos
# 色データ
    execute if data storage asset:teleporter TargetTeleporter.Data.Color run data modify entity @s item.tag.display.color set from storage asset:teleporter TargetTeleporter.Data.Color
# 初期化タグ削除
    tag @s remove TPStarInit
