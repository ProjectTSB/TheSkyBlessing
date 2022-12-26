#> world_manager:gimmick/shard_processor/process/
#
# 加工処理
#
# @within function world_manager:gimmick/shard_processor/check_item/

#>
# @private
#declare score_holder $Rotation

# 回す
    execute store result score $Rotation Temporary run data get storage world_manager:gimmick FrameData.ItemRotation
    scoreboard players add $Rotation Temporary 1
    execute store result entity @s ItemRotation byte 1 run scoreboard players get $Rotation Temporary
# VFX
    execute if score $Rotation Temporary matches 1 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.5 1.5
    execute if score $Rotation Temporary matches 1 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2
    execute if score $Rotation Temporary matches 3 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2
    execute if score $Rotation Temporary matches 5 run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1.5 2

    execute if score $Rotation Temporary matches 1 run data modify entity @s Item.tag.CustomModelData set value 20122
    execute if score $Rotation Temporary matches 1 run data modify entity @s Item.tag.display.Name set value '{"text":"#","font":"invisible_bg"}'
    execute positioned ~-0.5 ~-0.5 ~ as @e[type=armor_stand,tag=ShardProcessorModel,distance=..0.04,limit=1] run function world_manager:gimmick/shard_processor/process/model_modifier

# 8で回転されないようにFixedをつける
    execute if score $Rotation Temporary matches 7 run data modify entity @s Fixed set value 1b
# 8以上で壊す
    execute if score $Rotation Temporary matches 8.. run function world_manager:gimmick/shard_processor/process/complete
# リセット
    scoreboard players reset $Rotation Temporary