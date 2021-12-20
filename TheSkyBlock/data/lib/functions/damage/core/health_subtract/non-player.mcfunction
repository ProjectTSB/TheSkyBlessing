#> lib:damage/core/health_subtract/non-player
#
# Mobに対するHP減算回りの処理
#
# @within function lib:damage/core/health_subtract/

#>
# @private
#declare score_holder $Fluctuation

# ダメージ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    scoreboard players operation $Fluctuation Lib /= $-100 Const
    execute at @s run function lib:status_log/show_health
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# 代入 / kill
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
    execute if score $Health Temporary matches ..0 as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add Killer
    execute if score $Health Temporary matches ..0 at @s run function asset_manager:mob/triggers/death/manual
# 演出
    execute if score $Health Temporary matches 1.. if entity @s[type=#lib:undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#lib:undead] run effect give @s instant_damage 1 31 true
# onAttackのトリガー
    execute if score $Health Temporary matches 1.. run function lib:damage/core/trigger_on_attack