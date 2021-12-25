#> world_manager:gimmick/shard_processor/process/
#
# ガチャの処理
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
    execute if score $Rotation Temporary matches 3 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.5 2
    execute if score $Rotation Temporary matches 7 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 1.5 2
# 7以上で壊す
    execute if score $Rotation Temporary matches 7.. run function world_manager:gimmick/shard_processor/process/complete


# リセット
    scoreboard players reset $Rotation Temporary