#> asset_manager:teleporter/tick/star_init/summon_once
#
#
#
# @input storage asset:teleporter FilteredTeleporters
# @within function asset_manager:teleporter/tick/active

# storage呼び出し
    function oh_my_dat:please
# 末尾削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1]
# 全てのテレポーターを見きったら初期化済タグに切り替える
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s remove TeleporterInitializing
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s add TeleporterInitialized

# 召喚可能なら召喚する
    execute anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function asset_manager:teleporter/tick/star_init/summon
