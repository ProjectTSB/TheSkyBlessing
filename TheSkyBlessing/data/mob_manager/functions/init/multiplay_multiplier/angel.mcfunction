#> mob_manager:init/multiplay_multiplier/angel
#
#
#
# @input score MobHealthMax
# @output score MobHealthMax
# @within function asset_manager:mob/summon/set_data

# マルチ補正の適用
    scoreboard players operation @s MobMaxHealthMultiplier = $PlayerCount Global
    scoreboard players operation @s MobMaxHealthMultiplier *= $10 Const
# マルチ補正倍率の保存
    scoreboard players operation @s MobHealthMax *= $PlayerCount Global