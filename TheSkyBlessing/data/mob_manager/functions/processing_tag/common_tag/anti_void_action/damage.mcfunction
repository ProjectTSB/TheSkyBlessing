#> mob_manager:processing_tag/common_tag/anti_void_action/damage
#
# 距離に応じて最大体力依存ダメージを与える
#
# @within function mob_manager:processing_tag/common_tag/anti_void_action/

# 引数設定 - ダメージ
    execute if entity @s[distance=..5] store result storage api: Argument.Damage float 0.020 run attribute @s generic.max_health get 10
    execute if entity @s[distance=..4] store result storage api: Argument.Damage float 0.035 run attribute @s generic.max_health get 10
    execute if entity @s[distance=..3] store result storage api: Argument.Damage float 0.050 run attribute @s generic.max_health get 10
    execute if entity @s[distance=..2] store result storage api: Argument.Damage float 0.065 run attribute @s generic.max_health get 10
    execute if entity @s[distance=..1] store result storage api: Argument.Damage float 0.080 run attribute @s generic.max_health get 10
# 引数設定 - その他
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
# 補正
    execute as @e[tag=AntiVoidTarget,distance=..0.01,limit=1] run function api:damage/modifier
# ダメージ
    function api:damage/
# リセット
    function api:damage/reset
