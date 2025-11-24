#> lib:spread_entity/core/teleport
#
#
#
# @within function lib:spread_entity/core/**

#> Pos
# @private
    #declare score_holder $BoundsX-
    #declare score_holder $BoundsX+
    #declare score_holder $BoundsY-
    #declare score_holder $BoundsY+
    #declare score_holder $BoundsZ-
    #declare score_holder $BoundsZ+
    #declare score_holder $PosX
    #declare score_holder $PosY
    #declare score_holder $PosZ
    #declare score_holder $SubX
    #declare score_holder $SubY
    #declare score_holder $SubZ
    #declare score_holder $AddX
    #declare score_holder $AddY
    #declare score_holder $AddZ

# Pos取得
    execute store result score $PosX Temporary run data get storage api: Pos[0] 100
    execute store result score $PosY Temporary run data get storage api: Pos[1] 100
    execute store result score $PosZ Temporary run data get storage api: Pos[2] 100
# 範囲取得
    execute store result score $BoundsX- Temporary run data get storage lib: Argument.Bounds[0][0] 100
    execute store result score $BoundsX+ Temporary run data get storage lib: Argument.Bounds[0][1] 100
    execute store result score $BoundsY- Temporary run data get storage lib: Argument.Bounds[1][0] 100
    execute store result score $BoundsY+ Temporary run data get storage lib: Argument.Bounds[1][1] 100
    execute store result score $BoundsZ- Temporary run data get storage lib: Argument.Bounds[2][0] 100
    execute store result score $BoundsZ+ Temporary run data get storage lib: Argument.Bounds[2][1] 100
# X-
    execute store result score $SubX Temporary run random value 0..65535
    scoreboard players operation $SubX Temporary %= $BoundsX- Temporary
    execute unless score $BoundsX- Temporary matches 0 run scoreboard players operation $PosX Temporary -= $SubX Temporary
# X+
    execute store result score $AddX Temporary run random value 0..65535
    scoreboard players operation $AddX Temporary %= $BoundsX+ Temporary
    execute unless score $BoundsX+ Temporary matches 0 run scoreboard players operation $PosX Temporary += $AddX Temporary
# Y-
    execute store result score $SubY Temporary run random value 0..65535
    scoreboard players operation $SubY Temporary %= $BoundsY- Temporary
    execute unless score $BoundsY- Temporary matches 0 run scoreboard players operation $PosY Temporary -= $SubY Temporary
# Y+
    execute store result score $AddY Temporary run random value 0..65535
    scoreboard players operation $AddY Temporary %= $BoundsY+ Temporary
    execute unless score $BoundsY+ Temporary matches 0 run scoreboard players operation $PosY Temporary += $AddY Temporary
# Z-
    execute store result score $SubZ Temporary run random value 0..65535
    scoreboard players operation $SubZ Temporary %= $BoundsZ- Temporary
    execute unless score $BoundsZ- Temporary matches 0 run scoreboard players operation $PosZ Temporary -= $SubZ Temporary
# Z+
    execute store result score $AddZ Temporary run random value 0..65535
    scoreboard players operation $AddZ Temporary %= $BoundsZ+ Temporary
    execute unless score $BoundsZ+ Temporary matches 0 run scoreboard players operation $PosZ Temporary += $AddZ Temporary
# Posをセット
    data modify storage lib: Pos set value [0d,0d,0d]
    execute store result storage lib: Pos[0] double 0.01 run scoreboard players get $PosX Temporary
    execute store result storage lib: Pos[1] double 0.01 run scoreboard players get $PosY Temporary
    execute store result storage lib: Pos[2] double 0.01 run scoreboard players get $PosZ Temporary
    data modify entity @s Pos set from storage lib: Pos
# リセット
    data remove storage api: Pos
    data remove storage lib: Pos
    data remove storage lib: Argument.Bounds
    scoreboard players reset $BoundsX- Temporary
    scoreboard players reset $BoundsX+ Temporary
    scoreboard players reset $BoundsY- Temporary
    scoreboard players reset $BoundsY+ Temporary
    scoreboard players reset $BoundsZ- Temporary
    scoreboard players reset $BoundsZ+ Temporary
    scoreboard players reset $PosX Temporary
    scoreboard players reset $PosY Temporary
    scoreboard players reset $PosZ Temporary
    scoreboard players reset $SubX Temporary
    scoreboard players reset $SubY Temporary
    scoreboard players reset $SubZ Temporary
    scoreboard players reset $AddX Temporary
    scoreboard players reset $AddY Temporary
    scoreboard players reset $AddZ Temporary
