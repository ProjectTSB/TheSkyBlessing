#> core:tick/4_interval
#
# 4tick毎にschedule実行されます
#
# @within function
#   core:load_once
#   core:tick/4_interval

# MP表示処理
    execute as @a run function player_manager:mp/viewer/check_xpbar
# スポナー
    function asset_manager:spawner/tick/4_interval
# ループの再設定
    schedule function core:tick/4_interval 4t