#> asset_manager:spawner/subtract_hp/damage
#
#
#
# @within function asset_manager:spawner/subtract_hp/subtract

#> Private
# @private
    #declare score_holder $Size
    #declare score_holder $MaxHP

# VFX
    function asset_manager:spawner/subtract_hp/vfx/damage

# サイズ調整 0.2~0.8 = 0.0~0.6 + 0.2 = (0~6 + 2) * 0.1
    execute store result score $MaxHP Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.MaxHP
    scoreboard players operation $Size Temporary = @s SpawnerHP
# サイズ計算 (e2)
    scoreboard players operation $Size Temporary *= $600 Const
    scoreboard players operation $Size Temporary /= $MaxHP Temporary
    scoreboard players add $Size Temporary 200
# サイズ反映
    execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get $Size Temporary
    execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get $Size Temporary
# リセット
    scoreboard players reset $Size Temporary
    scoreboard players reset $MaxHP Temporary
