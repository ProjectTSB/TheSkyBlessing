#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player/

# versionのチェック
    function api:data_get/data_version
    execute unless data storage api: {DataVersion:2865} run tellraw @a [{"text":"[warning] ","color":"yellow"},{"text":"動作バージョン(","color":"white"},{"text":"1.18.1","color":"green"},{"text":")と異なるバージョンでのjoinを検出しました。\n重大な問題が発生する可能性があります。","color":"white"}]
# ボーナスの更新
    function player_manager:bonus/update_health_bonus
    function player_manager:bonus/update_mp_bonus
    function player_manager:bonus/update_attack_bonus
    function player_manager:bonus/update_defense_bonus
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Rejoin
# Reset
    scoreboard players reset @s RejoinEvent