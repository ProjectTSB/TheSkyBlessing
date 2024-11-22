#> asset_manager:teleporter/tick/summon_star/init/
#
#
#
# @within function asset_manager:teleporter/tick/active

#> Val
# @private
#declare score_holder $ActivateStarCount

# EntityStorageを再度取得する
    execute as @e[type=item_display,tag=FromTeleporter,distance=..1,limit=1] run function oh_my_dat:please
# グループIDから対象TP先を取得する
    data modify storage asset:teleporter Args.TargetGroupID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
    execute if data storage asset:teleporter Args.TargetGroupID run function asset_manager:teleporter/tick/summon_star/init/get_teleporters_from_group_id.m with storage asset:teleporter Args
# 繋がってる星の個数のチェック (1つは自身のため、2つ以上のときに初めて繋がってると言える)
    execute store result score $ActivateStarCount Temporary if data storage asset:teleporter FilteredTeleporters[].Data{ActivationState:"Activate"}
# つながっている星があるのであれば初期化中タグを付与し、星データをプレイヤーに格納する
    execute if score $ActivateStarCount Temporary matches 2.. run function asset_manager:teleporter/tick/summon_star/init/setup
# なければ初期化済タグを付与し、メッセージを出す
    execute if score $ActivateStarCount Temporary matches ..1 run tag @s add TeleporterInitialized
    execute if score $ActivateStarCount Temporary matches ..1 unless score @s TeleporterLogCD matches 0.. run tellraw @s {"text":"このテレポーターはどこにも繋がっていないようだ...","color":"light_purple"}
    execute if score $ActivateStarCount Temporary matches ..1 unless score @s TeleporterLogCD matches 0.. run scoreboard players set @s TeleporterLogCD 60
# リセット
    scoreboard players reset $ActivateStarCount Temporary
    data remove storage asset:teleporter FilteredTeleporters
    data remove storage asset:teleporter Args
