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
# ベース倍率 0.50(e2)
    scoreboard players set $MultiplayMultiplierBase Temporary 50
# マルチ補正倍率 0.50(e2)
    scoreboard players set $MultiplayMultiplier Temporary 50
# マルチ補正倍率の計算 0.50(e2) * N(e0) + 0.50(e2)
    scoreboard players operation $MultiplayMultiplier Temporary *= $NearbyPlayerCount Temporary
    scoreboard players operation $MultiplayMultiplier Temporary += $MultiplayMultiplierBase Temporary
# 難易度倍率の計算 (0.65(e2) || 1.0(e2) || 1.55(e2))
    execute if predicate api:global_vars/difficulty/easy run scoreboard players operation $MultiplayMultiplier Temporary *= $65 Const
    execute if predicate api:global_vars/difficulty/normal run scoreboard players operation $MultiplayMultiplier Temporary *= $100 Const
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players operation $MultiplayMultiplier Temporary *= $130 Const
    scoreboard players operation $MultiplayMultiplier Temporary /= $100 Const
# 雑魚は一律一旦75% 0.75(e2)
    scoreboard players operation $MultiplayMultiplier Temporary *= $75 Const
    scoreboard players operation $MultiplayMultiplier Temporary /= $100 Const
# マルチ補正倍率の保存
    scoreboard players operation @s MobMaxHealthMultiplier = $MultiplayMultiplier Temporary
# マルチ補正の適用 MobHealthMax(e2) = MobHealthMax(e0) * $MultiplayMultiplier(e2)
    scoreboard players operation @s MobHealthMax *= $MultiplayMultiplier Temporary
# 整数値に補正
    scoreboard players operation @s MobHealthMax /= $100 Const
    scoreboard players operation @s MobHealthMax *= $100 Const
# リセット
    scoreboard players reset $NearbyPlayerCount Temporary
    scoreboard players reset $MultiplayMultiplier Temporary
    scoreboard players reset $MultiplayMultiplierBase Temporary
