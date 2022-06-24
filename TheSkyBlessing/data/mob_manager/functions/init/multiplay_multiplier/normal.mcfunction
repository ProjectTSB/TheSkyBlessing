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
    #declare score_holder $MultiplayMultiplierBase
    #declare score_holder $MultiplayMultiplier

# 周囲のプレイヤー数を取得する (e0)
    execute at @s store result score $NearbyPlayerCount Temporary if entity @a[distance=..75]
# ベース倍率 0.3(e1)
    scoreboard players set $MultiplayMultiplierBase Temporary 3
# マルチ補正倍率 0.7(e1)
    scoreboard players set $MultiplayMultiplier Temporary 7
# マルチ補正倍率の計算 0.7(e1) * N(e0) + 0.3(e1)
    scoreboard players operation $MultiplayMultiplier Temporary *= $NearbyPlayerCount Temporary
    scoreboard players operation $MultiplayMultiplier Temporary += $MultiplayMultiplierBase Temporary
# マルチ補正倍率の保存
    scoreboard players operation @s MobMaxHealthMultiplier = $MultiplayMultiplier Temporary
# マルチ補正の適用 (e1 -> e0)
    scoreboard players operation @s MobHealthMax *= $MultiplayMultiplier Temporary
    scoreboard players operation @s MobHealthMax /= $10 Const
# リセット
    scoreboard players reset $NearbyPlayerCount Temporary
    scoreboard players reset $MultiplayMultiplier Temporary
    scoreboard players reset $MultiplayMultiplierBase Temporary