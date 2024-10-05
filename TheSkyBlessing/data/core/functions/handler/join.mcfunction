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
    function api:modifier/attack/base/update_bonus
    function api:modifier/defense/base/update_bonus
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
# ロード待ち時間を更新する
    function world_manager:chunk_io_protect/update_load_waiting_time
