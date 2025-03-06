#> api:damage/core/health_subtract/non-player/
#
# Mobに対するHP減算回りの処理
#
# @within function api:damage/core/health_subtract/

#> Val
# @private
#declare score_holder $Fluctuation

# ダメージ表示
    execute unless data storage api: {IsForwarded:true} run scoreboard players set $Fluctuation Lib 0
    execute unless data storage api: {IsForwarded:true} run scoreboard players operation $Fluctuation Lib -= $Damage Temporary
    execute unless data storage api: {IsForwarded:true} at @s run function lib:status_log/show_health

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage Temporary < $Health Temporary
# 減算
    scoreboard players operation $Health Temporary -= $Damage Temporary

# ノックバックを無効に
    execute unless predicate api:mob/has_forward_target run attribute @s minecraft:generic.knockback_resistance modifier add 3-0-1-0-100000001 "Temp_Resist" 1 add
# 敵対させるためのダメージ
    execute unless predicate api:mob/has_forward_target as @a if score @s UserID = $LatestModifiedUser UserID store result storage api: Argument.AttackerID int 1 run scoreboard players get @s UserID
    execute unless predicate api:mob/has_forward_target run function api:mob/deal_dummy_damage
# ノックバック無効を削除
    execute unless predicate api:mob/has_forward_target run attribute @s minecraft:generic.knockback_resistance modifier remove 3-0-1-0-100000001

# 代入
    execute unless predicate api:mob/has_forward_target run scoreboard players operation @s MobHealth = $Health Temporary

# 死んでるならタグ付与 (Kill は AssetMob の場合 Death トリガーをもとに付けるのでここでは付けない)
    execute unless predicate api:mob/has_forward_target if score $Health Temporary matches ..0 run tag @s add Death
    execute unless predicate api:mob/has_forward_target if score $Health Temporary matches ..0 unless function api:mob/is_asset_mob run tag @s add Kill
# イベントの追加
    execute if data storage api: Argument{ActivateTrigger:true} run function api:damage/core/trigger_events/non-player/attack_and_hurt/
    execute if data storage api: Argument{ActivateTrigger:true} if score $Health Temporary matches ..0 run function api:damage/core/trigger_events/non-player/kill_and_death/
