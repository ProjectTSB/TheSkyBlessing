#> core:tick/4_interval
#
# 4tick毎にschedule実行されます
#
# @within function
#   core:load_once
#   core:tick/4_interval

# MP表示処理
    execute as @a run function player_manager:mp/viewer/check_xpbar
# スポナー登録処理
    function #asset:spawner/register
# ループの再設定
    schedule function core:tick/4_interval 4t