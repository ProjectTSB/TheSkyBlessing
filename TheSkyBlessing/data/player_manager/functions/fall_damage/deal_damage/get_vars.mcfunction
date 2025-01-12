#> player_manager:fall_damage/deal_damage/get_vars
#
#
#
# @within function player_manager:fall_damage/deal_damage/

#> Val
# @private
#declare score_holder $YVec

# OldFallDistanceが0ならreturn
    execute if score @s OldFallDistance matches 0 run return 0

# 最大体力取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    
# 1tick前のFallDistance取得
    execute store result score $FallDistance Temporary run scoreboard players get @s OldFallDistance
    function api:player_vector/get
    execute store result score $YVec Temporary run data get storage api: Return.Vector[1] 10
    scoreboard players operation $FallDistance Temporary -= $YVec Temporary

# 落下ダメージ倍率の初期化
    execute store result score $DamageMultiplier Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.FallDamage 10
# ジャンプ力上昇のlvを取得する
# $JumpBoost(e1) = max($JumpBoost(e1) ?? -1(e1)) + 1(e1), 0)
    function api:data_get/active_effects
    execute store result score $JumpBoost Temporary run data get storage api: active_effects[{id:"minecraft:jump_boost"}].amplifier 10
    execute unless data storage api: active_effects[{id:"minecraft:jump_boost"}] run scoreboard players set $JumpBoost Temporary -10
    scoreboard players add $JumpBoost Temporary 10
    execute unless score $JumpBoost Temporary matches 0.. run scoreboard players set $JumpBoost Temporary 0

# リセット
    scoreboard players reset $YVec Temporary
