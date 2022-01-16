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
# 島
    function asset_manager:island/tick/4_interval
# 交易
    function asset_manager:trader/tick/4_interval
# ループの再設定
    schedule function core:tick/4_interval 4t