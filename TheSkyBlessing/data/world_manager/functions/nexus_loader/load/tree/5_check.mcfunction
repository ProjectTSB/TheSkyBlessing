#> world_manager:nexus_loader/load/tree/5_check
#
#
#
# @within function world_manager:nexus_loader/load/tree/5

# ノードが見つからなかったらちゃちゃっと fail
    execute unless data storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4] run return fail

# B.X- <= P.X <= B.X+
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.X[0]
    execute unless score $Temp Temporary <= $PlayerX Temporary run return fail
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.X[1]
    execute unless score $PlayerX Temporary <= $Temp Temporary run return fail

# B.Z- <= P.Z <= B.Z+
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.Z[0]
    execute unless score $Temp Temporary <= $PlayerZ Temporary run return fail
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.Z[1]
    execute unless score $PlayerZ Temporary <= $Temp Temporary run return fail

# B.Y- <= P.Y <= B.Y+
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.Y[0]
    execute unless score $Temp Temporary <= $PlayerY Temporary run return fail
    execute store result score $Temp Temporary run data get storage world_manager:nexus_loader Registry[-3].N[-4].N[-4].N[-4].N[-4].N[-4].N[-4].B.Y[1]
    execute unless score $PlayerY Temporary <= $Temp Temporary run return fail

return 1
