#> api:damage/core/attack
#
# ダメージ与えるよ
#
# @within function
#   api:damage/
#   api:damage/core/attack_to_forward_target/

# 計算に必要な値を取得
    function api:damage/core/get_status/
# 与えるダメージの計算
    function api:damage/core/calc/
# ダメージの補正
    execute if data storage api: Argument{BypassModifier:false} store result storage api: Damage double 0.0001 run scoreboard players get $Damage Temporary
    execute if data storage api: Argument{BypassModifier:false} run function api:damage/core/modify_damage.m {Side:"Defense"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag=!Enemy.Boss] if score $Metric Temporary matches ..99 run function metric:damage/normal.m {Condition:"Resist"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag=!Enemy.Boss] if score $Metric Temporary matches 100 run function metric:damage/normal.m {Condition:"Normal"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag=!Enemy.Boss] if score $Metric Temporary matches 101.. run function metric:damage/normal.m {Condition:"Weak"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag= Enemy.Boss] if score $Metric Temporary matches ..99 run function metric:damage/angel.m {Condition:"Resist"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag= Enemy.Boss] if score $Metric Temporary matches 100 run function metric:damage/angel.m {Condition:"Normal"}
    execute if data storage api: Argument{BypassModifier:false} if entity @s[type=!player,tag= Enemy.Boss] if score $Metric Temporary matches 101.. run function metric:damage/angel.m {Condition:"Weak"}
    execute if data storage api: Argument{BypassModifier:false} run scoreboard players reset $Metric Temporary
    execute if data storage api: Argument{BypassModifier:false} store result score $Damage Temporary run data get storage api: ModifiedDamage 100
    execute if data storage api: Argument{BypassModifier: true} run scoreboard players operation $Damage Temporary /= $100 Const
    execute if data storage api: Argument{BypassModifier: true} if entity @s[type=!player,tag=!Enemy.Boss] run function metric:damage/normal.m {Condition:"Bypass"}
    execute if data storage api: Argument{BypassModifier: true} if entity @s[type=!player,tag= Enemy.Boss] run function metric:damage/angel.m {Condition:"Bypass"}
# システム的なダメージ上限(9999.9(e2))チェック
    execute if score $Damage Temporary matches 999990.. run scoreboard players set $Damage Temporary 999990
# Mobに適用
    function api:damage/core/health_subtract/
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $Damage Temporary

# MP 回復
    execute if data storage api: Argument.AdditionalMPHeal if entity @s[type=!player] as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/mp_heal
