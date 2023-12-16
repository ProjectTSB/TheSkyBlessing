#> api:damage/core/health_subtract/non-player
#
# Mobに対するHP減算回りの処理
#
# @within function api:damage/core/health_subtract/

#>
# @private
#declare score_holder $Fluctuation
#declare tag UUIDAttacker

# ダメージ表示
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    scoreboard players operation $Fluctuation Lib /= $-100 Const
    execute at @s run function lib:status_log/show_health
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# ノックバックを無効に
    attribute @s minecraft:generic.knockback_resistance modifier add 3-0-1-0-100000001 "Temp_Resist" 1 add
# 敵対させるためのダメージ
    execute if score $Health Temporary matches 1.. as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add UUIDAttacker
    execute if score $Health Temporary matches 1.. run damage @s 0 minecraft:player_attack by @p[tag=UUIDAttacker]
# ノックバック無効を削除
    attribute @s minecraft:generic.knockback_resistance modifier remove 3-0-1-0-100000001
# 代入 / kill
    execute if score $Health Temporary matches 1.. run scoreboard players operation $Health Temporary /= $1000 Const
    execute if score $Health Temporary matches 1.. run scoreboard players operation @s MobHealth = $Health Temporary
    execute if score $Health Temporary matches ..0 as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add Killer
    execute if score $Health Temporary matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score $Health Temporary matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=Killer]
    execute if score $Health Temporary matches ..0 run kill @s
# リセット
    tag @a[tag=UUIDAttacker] remove UUIDAttacker
# onAttackのトリガー
    execute if score $Health Temporary matches 1.. run function api:damage/core/trigger_on_attack