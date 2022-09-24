#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# バージョンチェック
    function player_manager:version_check
# ボーナスの更新
    function player_manager:bonus/update_health_bonus
    function player_manager:bonus/update_mp_bonus
    function player_manager:bonus/update_attack_bonus
    function player_manager:bonus/update_defense_bonus
# ロード待ち時間を更新する
    function world_manager:chunk_io_protect/update_load_waiting_time