#> asset_manager:teleporter/common/increment_activation_state_version
#
#
#
# @within function
#   asset_manager:teleporter/append_group.m
#   asset_manager:teleporter/set_activate_state.m
#   asset_manager:teleporter/tick/angel_protection/*

#> Private
# @private
    #declare score_holder $Version

# 現在値取得
    scoreboard players set $Version Temporary 0
    execute store result score $Version Temporary run data get storage asset:teleporter Teleporters[-1].Data.ActivationStateVersion
# 加算
    scoreboard players add $Version Temporary 1
# 更新
    execute store result storage asset:teleporter Teleporters[-1].Data.ActivationStateVersion int 1 run scoreboard players get $Version Temporary
# リセット
    scoreboard players reset $Version Temporary
