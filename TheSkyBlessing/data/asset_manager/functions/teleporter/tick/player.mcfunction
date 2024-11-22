#> asset_manager:teleporter/tick/player
#
#
#
# @within function core:tick/player/

# 対象テレポーターの特定及びタグ付与
    tag @e[type=item_display,tag=Teleporter,distance=..1,limit=1] add FromTeleporter

# EntityStorageを取得する
    execute as @e[type=item_display,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please

# テレポートのメイン処理
    execute if entity @s[tag=!SuppressTeleport,predicate=lib:is_sneaking] if entity @e[type=item_display,tag=FromTeleporter,distance=..1,limit=1] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"Activate"} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{AngelProtection:true} run function asset_manager:teleporter/tick/active
# テレポート後のタグ解除処理
    execute if entity @s[tag=SuppressTeleport,predicate=!lib:is_sneaking] run tag @s remove SuppressTeleport
# キャンセル処理
    execute unless entity @s[tag=!TeleporterInitializing,tag=!TeleporterInitialized] run function asset_manager:teleporter/tick/cancel/check
    execute if entity @s[tag=TPCancel] run function asset_manager:teleporter/tick/cancel/

# テレポート失敗時ログのクールダウンを減らす
    scoreboard players remove @s[scores={TeleporterLogCD=0..}] TeleporterLogCD 1

# リセット
    tag @e[type=item_display,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter
