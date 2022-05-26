#> mob_manager:init/multiplay_multiplier/normal
#
#
#
# @input score MobHealthMax
# @output score MobHealthMax
# @within function
#   mob_manager:init/modify_health
#   asset_manager:mob/summon/set_data

#> Val
# @private
    #declare score_holder $NearbyPlayerCount
    #declare score_holder $MultiplayMultiPlierBase
    #declare score_holder $MultiplayMultiPlier

# 周囲のプレイヤー数を取得する (e0)
    execute at @s store result score $NearbyPlayerCount Temporary if entity @a[distance=..75]
# ベース倍率 0.3(e1)
    scoreboard players set $MultiplayMultiPlierBase Temporary 3
# マルチ補正倍率 0.7(e1)
    scoreboard players set $MultiplayMultiPlier Temporary 7
# マルチ補正倍率の計算 0.7(e1) * N(e0) + 0.3(e1)
    scoreboard players operation $MultiplayMultiPlier Temporary *= $NearbyPlayerCount Temporary
    scoreboard players operation $MultiplayMultiPlier Temporary += $MultiplayMultiPlierBase Temporary
# マルチ補正の適用 (e1 -> e0)
    scoreboard players operation @s MobHealthMax *= $MultiplayMultiPlier Temporary
    scoreboard players operation @s MobHealthMax /= $10 Const
# リセット
    scoreboard players reset $NearbyPlayerCount Temporary
    scoreboard players reset $MultiplayMultiPlier Temporary
    scoreboard players reset $MultiplayMultiPlierBase Temporary