#> asset_manager:island/dispel/
#
#
#
# @within function asset_manager:island/tick/

#> Tag
# @private
    #declare score_holder $Temp
    #declare score_holder $nonPosEqual

# 時間加算
    scoreboard players add @s DispelTime 1

# VFX
    scoreboard players operation $Temp Temporary = @s DispelTime
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score $Temp Temporary matches 0 run function asset_manager:island/dispel/vfx/dispelling

# 座標が変わってる場合はリセット
    execute unless entity @p[predicate=lib:is_sneaking,predicate=!lib:is_player_moving,distance=..2] run function asset_manager:island/dispel/cancelled

# 過去にボスが召喚されている場合すぐに召喚する
    execute if score @s DispelTime matches 30 run function oh_my_dat:please
    execute if score @s DispelTime matches 30 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:1b} run function asset_manager:island/dispel/boss/
# 解呪時間の3/4のタイミングでボス召喚フラグが立っていない場合召喚する
    execute if score @s DispelTime matches 120 run function oh_my_dat:please
    execute if score @s DispelTime matches 120 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:0b} run function asset_manager:island/dispel/boss/
# 解呪時間を満たした場合解呪する
    execute if score @s DispelTime matches 160 run function asset_manager:island/dispel/successful

# リセット
    scoreboard players reset $nonPosEqual Temporary
    scoreboard players reset $Temp Temporary
