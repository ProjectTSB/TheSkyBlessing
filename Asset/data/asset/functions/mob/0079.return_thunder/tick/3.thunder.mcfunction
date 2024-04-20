#> asset:mob/0079.return_thunder/tick/3.thunder
#
#
#
# @within function asset:mob/0079.return_thunder/tick/2.tick

# 演出
    particle dust 1 1 0 1 ~ ~4 ~ 0.2 3 0.2 0 120
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 5
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.25 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.25 0 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 18.0f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 27.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# ダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAAxwBGATDQKwDMAHALQqUDsc7ALADYaAQ3Yjm-RuwCM3GaS6tuzeeQIA7EQFsEyQGGKAAhlgCMERh0BnJOBQB7QhohJmdAijjO4GW2ABuItiEeuAAHkiUBFCRAL6xBJakaIQ2iO5gVhAWLohRYHDY2GgwVnoylPkY9tkQevloVgCiRSVlTQCOhEHYUADK5p7kiABmQWXxALpAA_3
# 円 1
    particle electric_spark ^0 ^ ^-2 0 0 0 0 1
    particle electric_spark ^0.39018 ^ ^-1.96157 0 0 0 0 1
    particle electric_spark ^0.76537 ^ ^-1.84776 0 0 0 0 1
    particle electric_spark ^1.11114 ^ ^-1.66294 0 0 0 0 1
    particle electric_spark ^1.41421 ^ ^-1.41421 0 0 0 0 1
    particle electric_spark ^1.66294 ^ ^-1.11114 0 0 0 0 1
    particle electric_spark ^1.84776 ^ ^-0.76537 0 0 0 0 1
    particle electric_spark ^1.96157 ^ ^-0.39018 0 0 0 0 1
    particle electric_spark ^2 ^ ^0 0 0 0 0 1
    particle electric_spark ^1.96157 ^ ^0.39018 0 0 0 0 1
    particle electric_spark ^1.84776 ^ ^0.76537 0 0 0 0 1
    particle electric_spark ^1.66294 ^ ^1.11114 0 0 0 0 1
    particle electric_spark ^1.41421 ^ ^1.41421 0 0 0 0 1
    particle electric_spark ^1.11114 ^ ^1.66294 0 0 0 0 1
    particle electric_spark ^0.76537 ^ ^1.84776 0 0 0 0 1
    particle electric_spark ^0.39018 ^ ^1.96157 0 0 0 0 1
    particle electric_spark ^0 ^ ^2 0 0 0 0 1
    particle electric_spark ^-0.39018 ^ ^1.96157 0 0 0 0 1
    particle electric_spark ^-0.76537 ^ ^1.84776 0 0 0 0 1
    particle electric_spark ^-1.11114 ^ ^1.66294 0 0 0 0 1
    particle electric_spark ^-1.41421 ^ ^1.41421 0 0 0 0 1
    particle electric_spark ^-1.66294 ^ ^1.11114 0 0 0 0 1
    particle electric_spark ^-1.84776 ^ ^0.76537 0 0 0 0 1
    particle electric_spark ^-1.96157 ^ ^0.39018 0 0 0 0 1
    particle electric_spark ^-2 ^ ^0 0 0 0 0 1
    particle electric_spark ^-1.96157 ^ ^-0.39018 0 0 0 0 1
    particle electric_spark ^-1.84776 ^ ^-0.76537 0 0 0 0 1
    particle electric_spark ^-1.66294 ^ ^-1.11114 0 0 0 0 1
    particle electric_spark ^-1.41421 ^ ^-1.41421 0 0 0 0 1
    particle electric_spark ^-1.11114 ^ ^-1.66294 0 0 0 0 1
    particle electric_spark ^-0.76537 ^ ^-1.84776 0 0 0 0 1
    particle electric_spark ^-0.39018 ^ ^-1.96157 0 0 0 0 1