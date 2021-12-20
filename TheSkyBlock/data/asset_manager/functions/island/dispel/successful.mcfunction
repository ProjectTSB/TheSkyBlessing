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
    function player_manager:keep_lost_item/give_all/
# 二度と祈れないようにする
    tag @s add DispelledCursedTreasure
# DispelPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 3b