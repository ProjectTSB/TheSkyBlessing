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
    execute if score $Temp Temporary matches 0 at @p[predicate=lib:is_sneaking,distance=..2] facing entity @s feet run function asset_manager:island/dispel/vfx/dispelling

# プレイヤー座標のチェック
    execute as @p[predicate=lib:is_sneaking,distance=..2] run function api:data_get/pos
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos run scoreboard players set $nonPosEqual Temporary 0
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos store success score $nonPosEqual Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos set from storage api: Pos
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos set from storage api: Pos
# 座標が変わってる場合はリセット
# DispelTimeが20の時を除外しているのは、Minecraftの仕様により、移動を終えてから20tick後にPosに補正が入っている(?)ため。
    execute if score $nonPosEqual Temporary matches 1 unless score @s DispelTime matches 20 run function asset_manager:island/dispel/cancelled

# 過去にボスが召喚されている場合すぐに召喚する
    execute if score @s DispelTime matches 30 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:1b} at @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/boss/
# 解呪時間の3/4のタイミングでボス召喚フラグが立っていない場合召喚する
    execute if score @s DispelTime matches 120 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData{HasBoss:true,DispelPhase:0b} at @p[predicate=lib:is_sneaking,distance=..2] run function asset_manager:island/dispel/boss/
# 解呪時間を満たした場合解呪する
    execute if score @s DispelTime matches 160 run function asset_manager:island/dispel/successful

# リセット
    scoreboard players reset $nonPosEqual Temporary
    scoreboard players reset $Temp Temporary