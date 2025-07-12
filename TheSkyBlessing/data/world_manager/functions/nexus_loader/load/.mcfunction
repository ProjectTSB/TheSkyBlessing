#> world_manager:nexus_loader/load/
#
#
#
# @within function world_manager:nexus_loader/tick

# タグ付与
    tag @s add NexusLoader.Loaded

# プレイヤーの Pos を取得しておく
    function api:data_get/pos
    execute store result score $PlayerX Temporary run data get storage api: Pos[0] 1
    execute store result score $PlayerY Temporary run data get storage api: Pos[1] 1
    execute store result score $PlayerZ Temporary run data get storage api: Pos[2] 1

# オフセット追加
    data modify storage world_manager:nexus_loader Registry append from storage world_manager:nexus_loader DummyCompoundsForOffset2[]

# [2]
    execute if data storage world_manager:nexus_loader Registry[-3].N[0] if dimension minecraft:the_end if function world_manager:nexus_loader/load/root_check run function world_manager:nexus_loader/load/tree/0
    execute if data storage world_manager:nexus_loader Registry[-3].Outliers[0] if dimension minecraft:the_end run function world_manager:nexus_loader/load/outliers/

# [1]
    data remove storage world_manager:nexus_loader Registry[-1]
    execute if data storage world_manager:nexus_loader Registry[-3].N[0] if dimension minecraft:overworld if function world_manager:nexus_loader/load/root_check run function world_manager:nexus_loader/load/tree/0
    execute if data storage world_manager:nexus_loader Registry[-3].Outliers[0] if dimension minecraft:overworld run function world_manager:nexus_loader/load/outliers/

# [0]
    data remove storage world_manager:nexus_loader Registry[-1]
    execute if data storage world_manager:nexus_loader Registry[-3].N[0] if dimension minecraft:the_nether if function world_manager:nexus_loader/load/root_check run function world_manager:nexus_loader/load/tree/0
    execute if data storage world_manager:nexus_loader Registry[-3].Outliers[0] if dimension minecraft:the_nether run function world_manager:nexus_loader/load/outliers/

# リセット
    scoreboard players reset $PlayerX Temporary
    scoreboard players reset $PlayerY Temporary
    scoreboard players reset $PlayerZ Temporary
    scoreboard players reset $Temp Temporary
    scoreboard players reset $Min Temporary
    scoreboard players reset $Max Temporary
    data remove storage world_manager:nexus_loader ResourceID
    data remove storage world_manager:nexus_loader IsLoaded
