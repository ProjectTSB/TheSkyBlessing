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
    function asset:artifact/0002.blessing/trigger/update/attack_bonus
    function asset:artifact/0002.blessing/trigger/update/defense_bonus
    function asset:artifact/0002.blessing/trigger/update/health_bonus
    function asset:artifact/0002.blessing/trigger/update/mp_bonus
# ロード待ち時間を更新する
    function world_manager:chunk_io_protect/update_load_waiting_time