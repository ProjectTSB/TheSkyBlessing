#> player_manager:version_check
#
#
#
# @within function core:handler/join

# versionのチェック
    function api:data_get/data_version
    execute unless data storage api: {DataVersion:3700} run tellraw @a [{"text":"[warning] ","color":"yellow"},{"text":"動作バージョン(","color":"white"},{"text":"1.20.4","color":"green"},{"text":")と異なるバージョンでのjoinを検出しました。\n重大な問題が発生する可能性があります。","color":"white"}]