#> api:damage/core/health_subtract/player/
#
#
#
# @within function api:damage/core/health_subtract/

# 難易度補正を掛ける
    execute if data storage api: Argument{BypassDifficulty:false} run function api:damage/core/health_subtract/player/difficulty_modifier
# 引数として代入
    execute store result storage api: Argument.Fluctuation double -0.0001 run scoreboard players get $Damage Temporary
    # data modify storage api: Argument.AttackType set from storage api: Argument.AttackType
    # data modify storage api: Argument.ElementType set from storage api: Argument.ElementType
    # data modify storage api: Argument.DisableLog set from storage api: Argument.DisableLog
# onAttackのトリガー
    function api:damage/core/trigger_events/player/attack_and_damage/
# 体力の減少を反映させる
    function lib:score_to_health_wrapper/fluctuation
