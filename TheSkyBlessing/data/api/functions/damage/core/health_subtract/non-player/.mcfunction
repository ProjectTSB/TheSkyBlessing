#> api:damage/core/health_subtract/non-player/
#
# Mobに対するHP減算回りの処理
#
# @within function api:damage/core/health_subtract/

#                   | ダメージ表示 | 被ダメ演出 | 体力減少 | イベント |                            備考                           |
# 通常 Mob          |     本体     |    本体    |   本体   |   本体   |                                                           |
# ForwardTarget     |     本体     |    本体    |    FT    |   両方   |                                                           |
# ExtendedCollision |     本体     |     FT     |    FT    |    FT    | api:damage/ の時点で Forward してるから気にしなくていいよ |

#> Val
# @private
#declare score_holder $Fluctuation

# ダメージ表示
    scoreboard players set $Fluctuation Lib 0
    scoreboard players operation $Fluctuation Lib -= $Damage Temporary
    function lib:status_log/show_health

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary

# 被ダメ演出
    function api:damage/core/health_subtract/non-player/damage_vfx

# イベントの追加
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:damage/core/health_subtract/non-player/add_event",IsForwardedOnly:false}

# コアから実行する処理
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:damage/core/health_subtract/non-player/for_health_entity",IsForwardedOnly:true}
