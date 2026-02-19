#> core:migration/v1.0.1/
#
#
#
# @within function core:migration/

# マイグレーション先バージョン設定
    data modify storage global GameVersion set value "v1.0.1"
    data modify storage global FirstGameVersion set value "v1.0.0"


#> Common Migration
    function core:migration/common/

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/9c6e5b09ba43acea8890fb71d6460b520dcf1274
data modify storage global ExpectedDatapackCount set value 22

#> from: https://github.com/ProjectTSB/Asset/commit/9ad271224bf4b95fff6eb67fbaaa25a2dbed2fd4
function api:trader/schedule_recipe_update_check

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/5559579584392ae8d87f3d3ed7d4ece4d685483e
# @private
#declare function player_manager:god/mercy/offering/init
function player_manager:god/mercy/offering/init

#> from: https://github.com/ProjectTSB/TheSkyBlessing/commit/8d20c4967981a3f4d789ba824b7aa8ce96d4b6de
# @private
#declare function asset_manager:island/dispel/update_unlocked_shard_lv/
data modify storage global UnlockShardProgress set value [5,29,54,75]
function asset_manager:island/dispel/update_unlocked_shard_lv/

#> from: https://github.com/ProjectTSB/Asset/commit/0a5d64c0aa456409719a1e9fb93e2f614fac102e
# @private
scoreboard objectives add 2251.Yaw dummy

#> from: https://github.com/ProjectTSB/Asset/commit/86a917635b01b5815740182bfbb53a0fd5c9e87f
# @private
scoreboard objectives add 93.TargetUserId dummy

#> from: https://github.com/ProjectTSB/Asset/commit/c669f0a77814f4d9ac32923b4ef3d138be64ef4a
# @private
scoreboard objectives add 9E.IdleTimer dummy
