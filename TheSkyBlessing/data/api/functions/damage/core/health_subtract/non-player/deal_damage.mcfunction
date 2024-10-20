#> api:damage/core/health_subtract/non-player/deal_damage
#
#
#
# @within function api:damage/core/health_subtract/non-player/

#> Private
# @private
#declare tag UUIDAttacker

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

# onAttackのトリガー
    function api:damage/core/trigger_events/non-player/attack_and_hurt
