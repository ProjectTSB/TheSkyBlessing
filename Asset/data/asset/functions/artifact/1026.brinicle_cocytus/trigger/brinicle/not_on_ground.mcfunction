#> asset:artifact/1026.brinicle_cocytus/trigger/brinicle/not_on_ground
#
#
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/main

# 移動
    tp @s ^ ^ ^0.2 ~ ~2

# 演出
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 0.8 0.8 0
    playsound block.glass.break neutral @a ~ ~ ~ 0.2 2 0

    scoreboard players operation $Temp Temporary = @s SI.Tick
    scoreboard players operation $Temp Temporary %= $4 Const

execute if score $Temp Temporary matches 0 run particle snowflake ^0.5 ^ ^ 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 1 run particle snowflake ^0.353 ^ ^0.353 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 2 run particle snowflake ^ ^ ^0.5 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 3 run particle snowflake ^-0.353 ^ ^0.353 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 0 run particle snowflake ^-0.5 ^ ^0.5 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 1 run particle snowflake ^-0.353 ^ ^-0.353 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 2 run particle snowflake ^0.5 ^ ^-0.5 0 0 0 0 1 normal @a
execute if score $Temp Temporary matches 3 run particle snowflake ^0.353 ^ ^-0.353 0 0 0 0 1 normal @a
    #execute if score $Temp Temporary matches 0 run particle snowflake ~ ~ ~ ^1000000 ^ ^ 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 1 run particle snowflake ~ ~ ~ ^707106 ^ ^707106 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 2 run particle snowflake ~ ~ ~ ^ ^ ^1000000 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 3 run particle snowflake ~ ~ ~ ^-707106 ^ ^707106 0.0000002 0 normal @a

    #execute if score $Temp Temporary matches 0 run particle snowflake ~ ~ ~ ^-1000000 ^ ^ 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 1 run particle snowflake ~ ~ ~ ^-707106 ^ ^-707106 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 2 run particle snowflake ~ ~ ~ ^ ^ ^-1000000 0.0000002 0 normal @a
    #execute if score $Temp Temporary matches 3 run particle snowflake ~ ~ ~ ^707106 ^ ^-707106 0.0000002 0 normal @a

    scoreboard players reset $Temp Temporary

# 着弾
    execute unless block ~ ~-0.4 ~ #lib:no_collision run tag @s add SI.OnGround