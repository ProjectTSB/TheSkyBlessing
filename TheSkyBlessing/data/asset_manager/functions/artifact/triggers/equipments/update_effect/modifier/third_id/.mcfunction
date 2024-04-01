#> asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/*/

# 取得
    execute store result score $FFFF Temporary run data get storage asset:artifact Modifier.ID
# それぞれ代入
    scoreboard players operation $F Temporary = $FFFF Temporary
    scoreboard players operation $F Temporary %= $16 Const
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/hexadecimal
    data modify storage asset:artifact Hexadecimal.Fourth set from storage asset:artifact Hexadecimal.Return
    scoreboard players operation $FFFF Temporary /= $16 Const
    scoreboard players operation $F Temporary = $FFFF Temporary
    scoreboard players operation $F Temporary %= $16 Const
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/hexadecimal
    data modify storage asset:artifact Hexadecimal.Third set from storage asset:artifact Hexadecimal.Return
    scoreboard players operation $FFFF Temporary /= $16 Const
    scoreboard players operation $F Temporary = $FFFF Temporary
    scoreboard players operation $F Temporary %= $16 Const
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/hexadecimal
    data modify storage asset:artifact Hexadecimal.Second set from storage asset:artifact Hexadecimal.Return
    scoreboard players operation $FFFF Temporary /= $16 Const
    scoreboard players operation $F Temporary = $FFFF Temporary
    scoreboard players operation $F Temporary %= $16 Const
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/hexadecimal
    data modify storage asset:artifact Hexadecimal.First set from storage asset:artifact Hexadecimal.Return
# 結合
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/concat.m with storage asset:artifact Hexadecimal
# リセット
    scoreboard players reset $F Temporary
    scoreboard players reset $FFFF Temporary
    data remove storage asset:artifact Hexadecimal
