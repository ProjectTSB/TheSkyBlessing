#> asset_manager:island/purify/
#
#
#
# @within function asset_manager:island/tick/

#> Tag
# @private
    #declare score_holder $Temp
    #declare score_holder $nonPosEqual

# 時間加算
    scoreboard players add @s PurifyTime 1

# VFX
    scoreboard players operation $Temp Temporary = @s PurifyTime
    scoreboard players operation $Temp Temporary %= $5 Const
    execute if score $Temp Temporary matches 0 positioned ~ ~0.5 ~ run function asset_manager:island/purify/vfx/purifying

# 座標が変わってる場合はリセット
    execute unless entity @p[predicate=lib:is_sneaking,predicate=!lib:is_player_moving,distance=..2] run function asset_manager:island/purify/cancelled

# 過去にボスが召喚されている場合すぐに召喚する
    execute if score @s PurifyTime matches 30 run function oh_my_dat:please
    execute if score @s PurifyTime matches 30 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:1b} run function asset_manager:island/purify/boss/
# 解呪時間の3/4のタイミングでボス召喚フラグが立っていない場合召喚する
    execute if score @s PurifyTime matches 120 run function oh_my_dat:please
    execute if score @s PurifyTime matches 120 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:0b} run function asset_manager:island/purify/boss/
# 解呪時間を満たした場合解呪する
    execute if score @s PurifyTime matches 160 run function asset_manager:island/purify/successful

# リセット
    scoreboard players reset $nonPosEqual Temporary
    scoreboard players reset $Temp Temporary
