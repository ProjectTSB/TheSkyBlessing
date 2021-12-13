#> lib:score_to_health_wrapper/core/store_attack_info
#
#
#
# @within function lib:score_to_health_wrapper/fluctuation

# 攻撃者を記録する
    execute store result score @s LatestAttackMob run data get storage api: Argument.Attacker
# 攻撃属性をEnumとして保存する
    scoreboard players set @s LatestAttackType 0
    execute if data storage api: Argument{ElementType:"Fire"} run scoreboard players set @s LatestAttackType 1
    execute if data storage api: Argument{ElementType:"Water"} run scoreboard players set @s LatestAttackType 2
    execute if data storage api: Argument{ElementType:"Thunder"} run scoreboard players set @s LatestAttackType 3
    execute if data storage api: Argument{ElementType:"None"} if data storage api: Argument{AttackType:"Physical"} run scoreboard players set @s LatestAttackType 4
    execute if data storage api: Argument{ElementType:"None"} if data storage api: Argument{AttackType:"Magic"} run scoreboard players set @s LatestAttackType 5