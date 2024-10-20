#> api:damage/core/health_subtract/non-player
#
# Mobに対するHP減算回りの処理
#
# @within function api:damage/core/health_subtract/

#> Val
# @private
    #declare score_holder $Fluctuation
    #declare tag UUIDAttacker

# ダメージ量を補正
    scoreboard players operation $Damage Temporary /= $100 Const
# ダメージ表示
    scoreboard players set $Fluctuation Lib 0
    scoreboard players operation $Fluctuation Lib -= $Damage Temporary
    execute at @s run function lib:status_log/show_health
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary
# ノックバックを無効に
    attribute @s minecraft:generic.knockback_resistance modifier add 3-0-1-0-100000001 "Temp_Resist" 1 add
# 敵対させるためのダメージ
    execute if score $Health Temporary matches 1.. as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add UUIDAttacker
    execute if score $Health Temporary matches 1.. run tag @p[tag=UUIDAttacker] add AttackedByApi
    execute if score $Health Temporary matches 1.. run damage @s 0 player_attack by @p[tag=UUIDAttacker]
# ノックバック無効を削除
    attribute @s minecraft:generic.knockback_resistance modifier remove 3-0-1-0-100000001
# 代入 / kill
    execute if score $Health Temporary matches 1.. run scoreboard players operation @s MobHealth = $Health Temporary
    execute if score $Health Temporary matches ..0 if data storage api: Argument{DamageType:"Projectile"} run tag @s add AttackedByProjectile
    execute if score $Health Temporary matches ..0 as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add Killer
    execute if score $Health Temporary matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score $Health Temporary matches ..0 run effect clear @s resistance
    execute if score $Health Temporary matches ..0 run damage @s 9999 player_attack by @p[tag=Killer]
    tag @s remove AttackedByProjectile
# リセット
    tag @a[tag=AttackedByApi] remove AttackedByApi
    tag @a[tag=UUIDAttacker] remove UUIDAttacker
# onAttackのトリガー
    execute if score $Health Temporary matches 1.. run function api:damage/core/trigger_events/to_non-player/
