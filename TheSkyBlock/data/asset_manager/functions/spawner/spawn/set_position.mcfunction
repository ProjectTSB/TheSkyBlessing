#> asset_manager:spawner/spawn/set_position
#
# 召喚座標をランダムに計算します
#
# @within function asset_manager:spawner/spawn/single

#> Pos
# @private
    #declare score_holder $X
    #declare score_holder $XSub
    #declare score_holder $Y
    #declare score_holder $YSub
    #declare score_holder $Z
    #declare score_holder $ZSub

# X
    execute store result score $X Temporary run function lib:random/
    scoreboard players operation $X Temporary %= $SpawnRange Temporary
    execute store result score $XSub Temporary run function lib:random/
    scoreboard players operation $XSub Temporary %= $SpawnRange Temporary
    scoreboard players operation $X Temporary += $PosX Temporary
    scoreboard players operation $X Temporary -= $XSub Temporary
# Y
    execute store result score $Y Temporary run function lib:random/
    scoreboard players operation $Y Temporary %= $300 Const
    scoreboard players operation $Y Temporary += $PosY Temporary
    scoreboard players remove $Y Temporary 100
# Z
    execute store result score $Z Temporary run function lib:random/
    scoreboard players operation $Z Temporary %= $SpawnRange Temporary
    execute store result score $ZSub Temporary run function lib:random/
    scoreboard players operation $ZSub Temporary %= $SpawnRange Temporary
    scoreboard players operation $Z Temporary += $PosZ Temporary
    scoreboard players operation $Z Temporary -= $ZSub Temporary
# Posをセット
    data modify storage asset:spawner Pos set value [0d,0d,0d]
    execute store result storage asset:spawner Pos[0] double 0.01 run scoreboard players get $X Temporary
    execute store result storage asset:spawner Pos[1] double 0.01 run scoreboard players get $Y Temporary
    execute store result storage asset:spawner Pos[2] double 0.01 run scoreboard players get $Z Temporary
    data modify entity @s Pos set from storage asset:spawner Pos
# リセット
    data remove storage asset:spawner Pos
    scoreboard players reset $X Temporary
    scoreboard players reset $XSub Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $YSub Temporary
    scoreboard players reset $Z Temporary
    scoreboard players reset $ZSub Temporary