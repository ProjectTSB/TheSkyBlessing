#> asset_manager:teleporter/tick/summon_star/summon/
#
#
#
# @input storage asset:teleporter FilteredTeleporters
# @within function asset_manager:teleporter/tick/active

# EntityStorage 呼び出し
    function oh_my_dat:please
# 召喚する
    execute anchored eyes positioned ^ ^ ^ summon marker run function asset_manager:teleporter/tick/summon_star/summon/as_marker
# 召喚で EntityStorage の参照先が変わってるので再度呼び出し
    function oh_my_dat:please
# 末尾削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1]
# 全てのテレポーターを見きったら初期化済タグに切り替える
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s remove TeleporterInitializing
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[0] run tag @s add TeleporterInitialized
