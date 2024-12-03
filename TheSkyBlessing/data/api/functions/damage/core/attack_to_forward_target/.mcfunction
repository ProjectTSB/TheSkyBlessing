#> api:damage/core/attack_to_forward_target/
#
#
#
# @within function api:damage/

#> Private
# @private
#declare score_holder $DamageForwardTarget

# 初回の攻撃か判別する
    execute store result storage api: Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID
    execute store result storage api: IsInitialAttack byte 1 run function api:damage/core/attack_to_forward_target/check_initial_attack.m with storage api: Args
    data remove storage api: Args
# ダメージを与える
    execute if data storage api: {IsInitialAttack:true} run scoreboard players operation $DamageForwardTarget Temporary = @s ForwardTargetMobUUID
    execute if data storage api: {IsInitialAttack:true} as @e[type=#lib:living,tag=!Uninterferable,tag=!Death,distance=..30] if score @s MobUUID = $DamageForwardTarget Temporary run function api:damage/core/attack
# リセット
    data remove storage api: IsInitialAttack
    scoreboard players reset $DamageForwardTarget Temporary
