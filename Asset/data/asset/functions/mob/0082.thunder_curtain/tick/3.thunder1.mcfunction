#> asset:mob/0082.thunder_curtain/tick/3.thunder1
#
# 雷を落とす位置とダメージを与える
#
# @within function asset:mob/0082.thunder_curtain/tick/2.tick

# 移動
    tp @s ^ ^ ^0.45

# 雷を落とす
    function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-1.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-3 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2
    execute positioned ^-4.5 ^ ^ run function asset:mob/0082.thunder_curtain/tick/4.thunder2

# 範囲内にいたプレイヤーにダメージを与える
    data modify storage lib: Argument.Damage set value 22.5f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 28f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute as @a[tag=ThunderTarget,distance=..30] run function lib:damage/

# リセット
    function lib:damage/reset
    tag @a[tag=ThunderTarget,distance=..30] remove ThunderTarget