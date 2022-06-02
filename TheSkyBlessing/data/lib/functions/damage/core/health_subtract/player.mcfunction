#> lib:damage/core/health_subtract/player
#
#
#
# @within function lib:damage/core/health_subtract/

# 引数として代入
    execute store result storage api: Argument.Fluctuation double -0.0001 run scoreboard players get $Damage Temporary
    execute store result storage api: Argument.Attacker int 1 run scoreboard players get $LatestModifiedEntity MobUUID
    data modify storage api: Argument.AttackType set from storage lib: Argument.AttackType
    data modify storage api: Argument.ElementType set from storage lib: Argument.ElementType
    data remove storage api: Argument.DeathMessage
    execute if data storage lib: Argument.DeathMessage run data modify storage api: Argument.DeathMessage set from storage lib: Argument.DeathMessage
# 体力の減少を反映させる
    function lib:score_to_health_wrapper/fluctuation
# onAttackのトリガー
    function lib:damage/core/trigger_on_damage/