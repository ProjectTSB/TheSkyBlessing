#> asset_manager:island/dispel/successful
#
#
#
# @within function asset_manager:island/dispel/

# VFX
    function asset_manager:island/dispel/vfx/dispel
# メッセージ
    function lib:message/common/dispel_island
# 祝福を与える
    data modify storage api: Argument.ID set value 2
    execute as @p[predicate=lib:is_sneaking,distance=..2] at @s run function api:sacred_treasure/give/from_id
# アイテム返す
    function player_manager:lost_item/give_all/
# 二度と祈れないようにする
    tag @s add DispelledCursedTreasure
# 交易島へのテレポーターを設置する
    execute if predicate lib:dimension/is_overworld run summon marker ^ ^ ^2 {Tags:["Teleporter","Object","Uninterferable"]}
    execute if predicate lib:dimension/is_overworld positioned ^ ^ ^2 as @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] run function oh_my_dat:please
    execute if predicate lib:dimension/is_overworld run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TargetPos set value [-15.5, 21.0, -1.5]
# DispelPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 3b
# Dispelledトリガーを発火する
    data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID
    function #asset:island/dispelled