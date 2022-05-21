#> asset_manager:mob/common_tag/anti_void_action/damage/execute
#
# 距離に応じて最大体力依存ダメージを与える
#
# @within function asset_manager:mob/common_tag/anti_void_action/damage/

execute if entity @s[distance=..5] store result storage lib: Argument.Damage float 0.020 run attribute @s generic.max_health get 10
execute if entity @s[distance=..4] store result storage lib: Argument.Damage float 0.035 run attribute @s generic.max_health get 10
execute if entity @s[distance=..3] store result storage lib: Argument.Damage float 0.050 run attribute @s generic.max_health get 10
execute if entity @s[distance=..2] store result storage lib: Argument.Damage float 0.065 run attribute @s generic.max_health get 10
execute if entity @s[distance=..1] store result storage lib: Argument.Damage float 0.080 run attribute @s generic.max_health get 10
execute as @e[tag=AntiVoidTarget,distance=..0.01,limit=1] run function lib:damage/modifier_continuation
function lib:damage/