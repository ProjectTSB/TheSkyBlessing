#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player/

# バージョンチェック
    function player_manager:version_check
# ボーナスの更新
    function player_manager:bonus/update_health_bonus
    function player_manager:bonus/update_mp_bonus
    function player_manager:bonus/update_attack_bonus
    function player_manager:bonus/update_defense_bonus
# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Rejoin
# Reset
    scoreboard players reset @s RejoinEvent