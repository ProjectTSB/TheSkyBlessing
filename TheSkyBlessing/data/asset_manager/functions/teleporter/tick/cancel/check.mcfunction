#> asset_manager:teleporter/tick/cancel/check
#
#
#
# @within function asset_manager:teleporter/tick/player

# テレポーターの EntityStorage 取得
    execute as @e[type=item_display,tag=FromTeleporter,distance=..1.5,limit=1] run function oh_my_dat:please
# 戦闘中になったら
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.Data{AngelProtection:true} run tag @s add TPCancel
    execute unless data storage asset:teleporter {ActivationState:"Activate"} run tag @s add TPCancel
# スニークを解除したら
    execute unless predicate lib:is_sneaking run tag @s add TPCancel
# 地面がなくなったら
    function api:data_get/on_ground
    execute if data storage api: {OnGround:false} run tag @s add TPCancel
# 動いたら
    execute if predicate lib:is_player_moving run tag @s add TPCancel
