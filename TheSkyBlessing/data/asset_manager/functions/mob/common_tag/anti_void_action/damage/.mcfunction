#> asset_manager:mob/common_tag/anti_void_action/damage/
#
# 範囲内のプレイヤーにダメージを与える処理
#
# @within function asset_manager:mob/common_tag/anti_void_action/

data modify storage lib: Argument.AttackType set value "Physical"
data modify storage lib: Argument.ElementType set value "None"
data modify storage lib: Argument.Fixed set value 1b
data modify storage lib: Argument.BypassResist set value 1b
function lib:damage/modifier_skip_first
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..5] run function asset_manager:mob/common_tag/anti_void_action/damage/execute
data remove storage lib: Argument