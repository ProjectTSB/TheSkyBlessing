#> world_manager:nexus_loader/load/tree/shrink.m
# @input args
#   Depth: int
#   ParentDepth: int
#   Path: string
# @within function world_manager:nexus_loader/load/tree/?

# 親ノードのフラグを立てる (Depth == ParentDepth の場合勝手に消える)
    $data modify storage world_manager:nexus_loader NeedsShrink$(ParentDepth) set value true
# 先にフラグは折っておく
    $data remove storage world_manager:nexus_loader NeedsShrink$(Depth)

# 一つも存在しないなら削除して return してしまう
    $execute unless data storage world_manager:nexus_loader $(Path).N[0] run return run data remove storage world_manager:nexus_loader $(Path)

# X-
    $execute store result score $Min Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.X[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.X[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.X[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.X[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.X[0] int 1 run scoreboard players get $Min Temporary

# X+
    $execute store result score $Max Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.X[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.X[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.X[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.X[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.X[1] int 1 run scoreboard players get $Max Temporary

# Y-
    $execute store result score $Min Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.Y[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.Y[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.Y[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.Y[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.Y[0] int 1 run scoreboard players get $Min Temporary

# Y+
    $execute store result score $Max Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.Y[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.Y[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.Y[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.Y[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.Y[1] int 1 run scoreboard players get $Max Temporary

# Z-
    $execute store result score $Min Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.Z[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.Z[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.Z[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.Z[0]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Min Temporary < $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.Z[0] int 1 run scoreboard players get $Min Temporary

# Z+
    $execute store result score $Max Temporary run data get storage world_manager:nexus_loader $(Path).N[0].B.Z[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[1].B.Z[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[1] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[2] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[2].B.Z[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[2] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute if data storage world_manager:nexus_loader $(Path).N[3] store result score $Temp Temporary run data get storage world_manager:nexus_loader $(Path).N[3].B.Z[1]
    $execute if data storage world_manager:nexus_loader $(Path).N[3] run scoreboard players operation $Max Temporary > $Temp Temporary
    $execute store result storage world_manager:nexus_loader $(Path).B.Z[1] int 1 run scoreboard players get $Max Temporary
