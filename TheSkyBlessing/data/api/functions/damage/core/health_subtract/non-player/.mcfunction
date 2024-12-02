#> api:damage/core/health_subtract/non-player/
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
    execute as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add UUIDAttacker
    tag @p[tag=UUIDAttacker] add AttackedByApi
    damage @s 0 player_attack by @p[tag=UUIDAttacker]
    tag @p[tag=AttackedByApi] remove AttackedByApi
    tag @p[tag=UUIDAttacker] remove UUIDAttacker
# ノックバック無効を削除
    attribute @s minecraft:generic.knockback_resistance modifier remove 3-0-1-0-100000001

# 代入
    scoreboard players operation @s MobHealth = $Health Temporary

# 死んでるならタグ付与
    execute if score $Health Temporary matches ..0 run tag @s add Death
# イベントの追加
    function api:damage/core/trigger_events/non-player/attack_and_hurt/
    execute if score $Health Temporary matches ..0 run function api:damage/core/trigger_events/non-player/kill_and_death/
