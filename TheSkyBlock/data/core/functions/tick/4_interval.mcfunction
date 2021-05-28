#> core:tick/4_interval
#
# 4tick毎にschedule実行されます
#
# @within function
#   core:load_once
#   core:tick/4_interval

# MP表示処理
    execute as @a run function player_manager:mp_viewer/check_xpbar

# ループの再設定
    schedule function core:tick/4_interval 4t