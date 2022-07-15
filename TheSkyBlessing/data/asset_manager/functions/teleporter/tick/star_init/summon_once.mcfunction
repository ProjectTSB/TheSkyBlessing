#> asset_manager:teleporter/tick/star_init/summon_once
#
#
#
# @input storage asset:teleporter FilteredTeleporters
# @within function
#   asset_manager:teleporter/tick/active
#   asset_manager:teleporter/tick/star_init/summon_once

# storage呼び出し
    function oh_my_dat:please
# 召喚可能か確認
    execute store success storage asset:teleporter TPStarSummonable byte 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1].Data{ActivationState:"Activate"}
# 召喚可能なら召喚する
    execute if data storage asset:teleporter {TPStarSummonable: true} anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function asset_manager:teleporter/tick/star_init/summon
# 召喚したならstorage呼び出し
    execute if data storage asset:teleporter {TPStarSummonable: true} run function oh_my_dat:please
# 否が応でも末尾削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1]
# 全てのテレポーターを見きったら初期化済タグに切り替える
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s remove TeleporterInitializing
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s add TeleporterInitialized
# 召喚したならリセット
    execute if data storage asset:teleporter {TPStarSummonable: true} run data remove storage asset:teleporter TPStarSummonable
# 召喚できてなかったら再帰
    execute if data storage asset:teleporter {TPStarSummonable:false} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run function asset_manager:teleporter/tick/star_init/summon_once