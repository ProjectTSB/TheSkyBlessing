#> asset_manager:teleporter/tick/summon_star/init/
#
#
#
# @within function asset_manager:teleporter/tick/active

#> Val
# @private
    #declare score_holder $ActivateStarCount
    #declare score_holder $GroupCount

# EntityStorageを再度取得する
    execute as @e[type=item_display,tag=FromTeleporter,distance=..1.5,limit=1] run function oh_my_dat:please
# グループIDから対象TP先を取得する
    data modify storage asset:teleporter TargetGroupIDs set from storage asset:teleporter Teleporters[-1].Data.GroupIDs
    execute if data storage asset:teleporter TargetGroupIDs run function asset_manager:teleporter/tick/summon_star/init/get_teleporters/
# 繋がってる星の個数のチェック (1つは自身のため、2つ以上のときに初めて繋がってると言える)
    execute store result score $ActivateStarCount Temporary if data storage asset:teleporter FilteredTeleporters[]
    execute store result score $GroupCount Temporary if data storage asset:teleporter Teleporters[-1].Data.GroupIDs[]
# つながっている星があるのであれば初期化中タグを付与し、星データをプレイヤーに格納する
    execute if score $ActivateStarCount Temporary > $GroupCount Temporary run function asset_manager:teleporter/tick/summon_star/init/setup
# なければ初期化済タグを付与し、メッセージを出す
    execute if score $ActivateStarCount Temporary <= $GroupCount Temporary run tag @s add TeleporterInitialized
    execute if score $ActivateStarCount Temporary <= $GroupCount Temporary unless score @s TeleporterLogCD matches 0.. run tellraw @s {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
    execute if score $ActivateStarCount Temporary <= $GroupCount Temporary unless score @s TeleporterLogCD matches 0.. run scoreboard players set @s TeleporterLogCD 60
# リセット
    scoreboard players reset $ActivateStarCount Temporary
    scoreboard players reset $GroupCount Temporary
    data remove storage asset:teleporter FilteredTeleporters
    data remove storage asset:teleporter Args
