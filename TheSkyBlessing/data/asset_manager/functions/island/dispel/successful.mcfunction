#> asset_manager:island/dispel/successful
#
#
#
# @within function asset_manager:island/dispel/

# 邪魔なスコアをリセットする
    scoreboard players reset @s DispelTime
# 解呪数を1増やす
    scoreboard players add $PurifiedIslands Global 1
# VFX
    function asset_manager:island/dispel/vfx/dispel
# メッセージ
    function lib:message/common/dispel_island
# 祝福を与える
    data modify storage api: Argument.ID set value 2
    execute as @p[predicate=lib:is_sneaking,distance=..2] at @s run function api:artifact/give/from_id
# アイテム返す
    function player_manager:lost_item/give_all/
# データ取得
    function oh_my_dat:please
# 二度と祈れないようにする
    tag @s add DispelledCursedArtifact
# テレポーターを起動する
    data modify storage api: Argument.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    data modify storage api: Argument.ActivationState set value "Activate"
    function metric:island
    function api:teleporter/set_activation_state/from_id
# DispelPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 3b
# Dispelledトリガーを発火する
    data modify storage asset:island Args.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    function asset_manager:island/dispel/dispelled.m with storage asset:island Args
    data remove storage asset:island Args
