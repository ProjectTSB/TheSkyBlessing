#> asset_manager:teleporter/tick/global
#
#
#
# @within function core:tick/

#> Private
# @private
#declare score_holder $Version

# EntityStorage 呼び出し
    function oh_my_dat:please

# 天使確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{AngelProtection:     true} unless entity @e[type=#lib:living,tag=Enemy.Boss,distance=..120] run function asset_manager:teleporter/tick/angel_protection/disable
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{AngelProtection: true} if entity @e[type=#lib:living,tag=Enemy.Boss,distance=..120] run function asset_manager:teleporter/tick/angel_protection/enable

# 更新処理
    scoreboard players set $Version Temporary 0
    execute store result score $Version Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationStateVersion
    execute unless score @s TeleporterActivationStateVersion = $Version Temporary run function asset_manager:teleporter/common/update_display_state
    scoreboard players operation @s TeleporterActivationStateVersion = $Version Temporary

# VFX
    function asset_manager:teleporter/tick/vfx/teleporter/

# リセット
    scoreboard players reset $Version Temporary
