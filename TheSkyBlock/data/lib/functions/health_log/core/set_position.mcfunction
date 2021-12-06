#> lib:health_log/core/set_position
#
#
#
# @within function lib:health_log/show

#> Pos
# @private
    #declare score_holder $PosX
    #declare score_holder $PosY
    #declare score_holder $PosZ
    #declare score_holder $RandX
    #declare score_holder $RandY
    #declare score_holder $RandZ

# Pos取得
    execute if entity @s[type=player] run function api:data_get/pos
    execute if entity @s[type=!player] run data modify storage api: Pos set from entity @s Pos
# X
    execute store result score $PosX Temporary run data get storage api: Pos[0] 100
    execute store result score $RandX Temporary run function lib:random/
    scoreboard players operation $RandX Temporary %= $200 Const
    scoreboard players operation $PosX Temporary += $RandX Temporary
    scoreboard players operation $PosX Temporary -= $100 Const
# Y
    execute store result score $PosY Temporary run data get storage api: Pos[1] 100
    execute store result score $RandY Temporary run function lib:random/
    scoreboard players operation $RandY Temporary %= $100 Const
    scoreboard players operation $PosY Temporary += $RandY Temporary
    scoreboard players operation $PosY Temporary -= $50 Const
    scoreboard players operation $RandY Temporary += $30 Const
# Z
    execute store result score $PosZ Temporary run data get storage api: Pos[2] 100
    execute store result score $RandZ Temporary run function lib:random/
    scoreboard players operation $RandZ Temporary %= $200 Const
    scoreboard players operation $PosZ Temporary += $RandZ Temporary
    scoreboard players operation $PosZ Temporary -= $100 Const

# Posをセット
    data modify storage api: Pos set value [0d,0d,0d]
    execute store result storage api: Pos[0] double 0.01 run scoreboard players get $PosX Temporary
    execute store result storage api: Pos[1] double 0.01 run scoreboard players get $PosY Temporary
    execute store result storage api: Pos[2] double 0.01 run scoreboard players get $PosZ Temporary
    data modify entity @s Pos set from storage api: Pos

# リセット
    data remove storage api: Pos
    scoreboard players reset $PosX Temporary
    scoreboard players reset $PosY Temporary
    scoreboard players reset $PosZ Temporary
    scoreboard players reset $RandX Temporary
    scoreboard players reset $RandY Temporary
    scoreboard players reset $RandZ Temporary
