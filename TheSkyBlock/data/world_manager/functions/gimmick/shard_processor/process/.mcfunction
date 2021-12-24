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
# 7以上で壊す
    execute if score $Rotation Temporary matches 7.. run function world_manager:gimmick/shard_processor/process/complete