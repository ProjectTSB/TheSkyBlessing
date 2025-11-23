#> api:damage/core/health_subtract/non-player/damage_vfx
#
#
#
# @within function api:damage/core/health_subtract/non-player/

# ノックバックを無効に
    attribute @s minecraft:generic.knockback_resistance modifier add 3-0-1-0-100000001 "Temp_Resist" 1 add
# 敵対させるためのダメージ
    execute as @a if score @s UserID = $LatestModifiedUser UserID store result storage api: Argument.AttackerID int 1 run scoreboard players get @s UserID
    function api:mob/deal_dummy_damage
# ノックバック無効を削除
    attribute @s minecraft:generic.knockback_resistance modifier remove 3-0-1-0-100000001
