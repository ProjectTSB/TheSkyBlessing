#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player

# versionのチェック
    function api:data_get/data_version
    execute unless data storage api: {DataVersion:2578} run tellraw @a [{"text":"[warning] ","color":"yellow"},{"text":"動作バージョン(","color":"white"},{"text":"1.16.2","color":"green"},{"text":")と異なるバージョンでのjoinを検知しました。\nマップが正常に遊べない可能性があります。","color":"white"}]
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Rejoin
# Reset
    scoreboard players reset @s RejoinEvent