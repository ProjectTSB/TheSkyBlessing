#> asset_manager:mob/common_tag/anti_void_action/
#
# 汎用奈落耐性
#
# @within function asset_manager:mob/common_tag/

# 比較用のthis
    tag @s add this
# 紐づけAECの特定
    execute as @e[type=area_effect_cloud,tag=AntiVoidTargets] if score @s VoidMobID = @e[tag=this,distance=..0.01,limit=1] MobUUID run tag @s add AntiVoidTarget
# リセット
    tag @s remove this

# 時間加算
    scoreboard players add @s VoidActionTime 1
# 初期tickに対象座標補足
    execute if score @s VoidActionTime matches 1 run function asset_manager:mob/common_tag/anti_void_action/init
# 警告VFX
    execute at @e[type=area_effect_cloud,tag=AntiVoidTarget] run function asset_manager:mob/common_tag/anti_void_action/vfx/
# 最後の処理
    execute if score @s VoidActionTime matches 60 run function asset_manager:mob/common_tag/anti_void_action/teleport
    execute if score @s VoidActionTime matches 63 as @a[gamemode=!spectator,gamemode=!creative,distance=..5] run function asset_manager:mob/common_tag/anti_void_action/damage
    execute if score @s VoidActionTime matches 65 run function asset_manager:mob/common_tag/anti_void_action/reset
# リセット
    tag @s remove AntiVoidTarget