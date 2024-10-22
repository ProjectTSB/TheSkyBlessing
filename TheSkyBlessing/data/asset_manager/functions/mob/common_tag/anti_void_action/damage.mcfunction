#> asset_manager:mob/common_tag/anti_void_action/damage
#
# 距離に応じて最大体力依存ダメージを与える
#
# @within function asset_manager:mob/common_tag/anti_void_action/

# 最大体力を取得
    function api:modifier/max_health/get

# 引数設定 - ダメージ
    execute if entity @s[distance=..5] store result storage lib: Argument.Damage float 0.020 run data get storage api: Return.MaxHealth 10
    execute if entity @s[distance=..4] store result storage lib: Argument.Damage float 0.035 run data get storage api: Return.MaxHealth 10
    execute if entity @s[distance=..3] store result storage lib: Argument.Damage float 0.050 run data get storage api: Return.MaxHealth 10
    execute if entity @s[distance=..2] store result storage lib: Argument.Damage float 0.065 run data get storage api: Return.MaxHealth 10
    execute if entity @s[distance=..1] store result storage lib: Argument.Damage float 0.080 run data get storage api: Return.MaxHealth 10
# 引数設定 - その他
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
# 補正
    execute as @e[tag=AntiVoidTarget,distance=..0.01,limit=1] run function lib:damage/modifier
# ダメージ
    function lib:damage/
# リセット
    function lib:damage/reset
