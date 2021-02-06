#> core:4_interval_tick
#
# 4tick毎にschedule実行されます
#
# @within function
#   core:load_once
#   core:4_interval_tick

    # MP表示処理
        execute as @a run function player_manager:mp_viewer/check_xpbar

schedule function core:4_interval_tick 4t
